Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F13020E010
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742312394; cv=none; b=jD79/PtaIjUGny0KOmF+klrifDqRAEUD26zpy/HxCVIXufC45jwNPH8vklvEV1e/HY/GcqLXMF6sDMa1hHWE4pkpK1GRskKnSNWaJakDihiBfWuo3Wjr1oihMPhvWrbXplFFY/JENC7w3pF0BLknqQTv53FoKB2AZZHtjGQMkYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742312394; c=relaxed/simple;
	bh=Oqw/o1B9Bw82ocjmoN9DENDpRqqqQ5zYi0LDzKkvxT8=;
	h=To:Subject:From:Message-Id:Date; b=XPDvEQ6a4GhH+oWNKWllIThiMlwrDAmPUQIiQWxwI0bLUxmYqFYglGGVJJOz6h8vWivg2qDFfpn1cx8+kwYMVmAW4XFZSvrYrKvExI3ILxOJuTatASGtA6+zX8FyJi/1qI+sf6SF7fzSYq9RSsK9/5yg+X9mfHP/sbbyAqbm1N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSXMLyDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSXMLyDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BB9C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742312393;
	bh=Oqw/o1B9Bw82ocjmoN9DENDpRqqqQ5zYi0LDzKkvxT8=;
	h=To:Subject:From:Date:From;
	b=HSXMLyDpd7SncAElrfJWkuM7B4M0vONtGgiFB159lCdNtqrRCYSnRJj3gK3JSYHiU
	 Huyai/kwddpHdL/4lIQ4IwKvh2O7+Qq1APXcOVxIZBaGCVm2MlrQDRfH2yu396zB47
	 KzMx9wRVv97IuNXY1e+2BI2fO5v4BWmt/vwDwWv18ZleQaH4fZkS+nzKBrXYyp3oYa
	 S8FrvMvDfl9WGIqwyHCvFsktHwQVZlfcmeIJHN8jiLhIrDhAVrXtLHC9J9wrSwhyRn
	 ou922DFpctjp6+xlntunEIOGeTAjyW4g+Sv5mD2DkKaFb45ibgAA2Z8q9im0SZ6BaD
	 vxUGja3U7r4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95955C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231239360.19306.18360334982680519736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de717fb7a0988a4a73a9a867288a6c802d1bb402bae55ea3a82b2b35cd8a158
Date: Tue, 18 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742312393

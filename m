Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2ED31A05E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757502594; cv=none; b=eV+lhLWtxa/N09wpC3DgDczrMBKMfBo9M1U/Zvvh+AhKZeUxiXjWIg8NwrRHVK/hqFTiwhGQhS87qNCb83x4jMxxkFocCrPDxzTuNSlXC1eplt3a8Hv5k9NOEa/an1pgT+KiPLA31lz2zzsPKXrrt+03iz0pZQpGeHEoZVbDrjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757502594; c=relaxed/simple;
	bh=8uG2soCzlciOGEtx3ZDojRTwlSHbIG3nFUvZnreMakU=;
	h=To:Subject:From:Message-Id:Date; b=GRBsFExnfnQW83qvB4ziJ0Uu6zP5BG28tbPYEJKxgR3YofXY/lgcjGD7Hc1P00Zzvy1//9ophZoDRu9/LNee32yoc6SKLvm/bUh1gfJBC/uC9fQxX9pQOK6FWnGGxqPQdH6YQpTMHy7MpaU6zIhcroDy7wXLhFMGhdiRmLQgMwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgF7p55j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgF7p55j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0B4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757502593;
	bh=8uG2soCzlciOGEtx3ZDojRTwlSHbIG3nFUvZnreMakU=;
	h=To:Subject:From:Date:From;
	b=qgF7p55jvhS1cuasKlUwg2YUYiR4N1RLAodrbbk6UIvDXqyf3hqjl5RZ5NOJykc08
	 XyLgp2lrsuc7AUk9Jl/qVRo+/SXzSEK+XzgK8YqhqG6bsJlc6y2mFroUSwVWY5GhMv
	 MUK7Sg6miFGHfUt+FuhKdBn1+H4OuNe4R94lTgg2wRweKaAyPxPbT1p9f0UeiamOdA
	 rJ1C6YKpU8j4NwsLS/1n49951pb+j5WK+2BYT/dCl8HJcrS4HMaHWNwAB/EPURvngf
	 BusL8PByNcA1L7lhUu3YOxoWaITj0iiXuO4G5LcydJ362Ia8kfYl2Y16zw4JYk3wwG
	 vg+k/XbiBMefw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8CCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750259358.26611.12672600973512448912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdad80b23db59265e1619f3abc736f7ae38a4291c54ecefd7697592e66480d08
Date: Wed, 10 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757502593

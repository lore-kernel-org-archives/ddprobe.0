Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8F54B1E7F
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747685394; cv=none; b=t1/B1Q6NLOP/lxm/Gc3RKXbn+Rd1YrP/vHEgN2EDnnvobMmJjNwvDaNWNBnQ/NDrKTzhDzGnfpxgCp92uuWntGN1DI+gxwF3pfcmT/5nFU9kkxkELSUAYgJ2rE/c/bDnMpG8MCOHVzoQCRC6HQ4CADTFYtWbe2Wbqvb1LpfVbAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747685394; c=relaxed/simple;
	bh=9wbPOO1e+iBg+M8RNbrmeGga1zAt0KuFgCd/jyeSAE0=;
	h=To:Subject:From:Message-Id:Date; b=MG2E7xVd/ee9z4+cVUDAy53te0V1ZImwZM3aNk7ykwdz65UcYRaQWKWyutQDjRu8jBg0m8AKEYQgPf5nmJ0qjaUMZQOaneaZKOEap1f8S1ES22QArw5akw+bWVdxgGwo6C/TY+TUsm0srRfZS/NBTMEgcRip+uYIpKizLzDz/Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfH0Rx+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfH0Rx+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A859FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747685393;
	bh=9wbPOO1e+iBg+M8RNbrmeGga1zAt0KuFgCd/jyeSAE0=;
	h=To:Subject:From:Date:From;
	b=mfH0Rx+xKr+7O/6TMmlSXgqxWwk5/5AepUmKDJXceUYeGbtTpxwxfcD0aRAlewqMt
	 HmVp/k95P0SaCEAEHSWdXX1TIx43T7EIVd3Kbxb7GbXDUUvvDHDz/h3A+F5qtPHV5w
	 ZUb5HZPPScFlLLyGIMLafjlsaTAr9Q/TlVckl2xaDK0Yo3npWiroUy7RAqsAYiFhA1
	 D/UHfwXimImmoiH/zwxQkbbF1pNBhZSLGRphz5tdjdWpFK9ij3qmsWQbuKqnoph1Z9
	 HmEtD0Sm0t416FyIbO02ZalP9xPFQ5r/qvnvg4vMbvpIQMTGzaPy9j706Kv7M+3qG7
	 naJYtlFQmZUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F2C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768539358.11388.15522897405531688766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11519c2e40cf427d93c7e6ee691e1ee957bd13e1b0b6f2893d77ec5d67537fe
Date: Mon, 19 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747685393

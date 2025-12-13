Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36E248F69
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765668774; cv=none; b=b/YTLwt1cnN8STI3en2oTE7sdGhTFwUVZU4vpa3PXxFdaQhUbom/eDtanQB0TRDE5fEg9y1bGRGaRRLhlRRSykW/n4jFGlrjyY4t9eaTawTlv14EheRXsrdXmykov/wxn2CUyEiTMLAYE8ro+IM8j9uPGaDOSML+spu9skh1SjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765668774; c=relaxed/simple;
	bh=ZduGamDcOMO8Ldn22ZFAgJ9yVkvXOxCkeasbSXJLVA8=;
	h=To:Subject:From:Message-Id:Date; b=sKc3qhHpY3aKBe3dDTVLZw/h6N1n06V+L7UYoq4w5vI1wUj0CIlakWHYxOJIt3tncdVjFgRN4Tj8pkzLalReFka5cNISdX6s93BW3y1ivIwyr4Xkyo2UP8UTVgSojHLTrqsIR0hQIJc5umx+ED46V/5oxn12TJ19fv1gZxC4Hz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5oqE6Wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5oqE6Wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1F7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765668773;
	bh=ZduGamDcOMO8Ldn22ZFAgJ9yVkvXOxCkeasbSXJLVA8=;
	h=To:Subject:From:Date:From;
	b=m5oqE6Wvg+2cU9MB/GwGGRTz/1WlRKUzCBgN8QYhd4jz2nJTktHH/FPCFeiq0TbYo
	 UM6gVu0W0Ts208x9JZSXsnRYCC9+WTe2Swsr4spPdwb5+MtxreHGNzUg3LOo2Cvj/C
	 f2etjDyoLkulomOkZGfHmMwcfGdABecZ87cG+9nwBQ8Hqfzus+O0jUXSllnWDeP+TQ
	 14rp8i8n+dwZRgkU98ipV/kloDSRx9HjJA2IJ8YtoY2bWAGv6RRpLGb3VrqdI2QeSn
	 CDvHwdxFLo+zHuzQDIoQQ8wRr7w0Ty+VZjcIMMo1CrLrSWkkjR35APreTwEpuoMGBq
	 KWaYMK8mdmo/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C8ED5B159
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566877359.6056.9220719879365011158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb9db017bf487f4ca2650887743c6a1d2a682e2215c8ea821a142302ae3dfe4
Date: Sat, 13 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765668773

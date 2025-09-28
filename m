Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256BC221FCF
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759034994; cv=none; b=u6fKRW1c5ZX1a/txbsVV80vWdxKdJD0+EIiG2K9PI6/IxcWnzDHK8s8RFWwtrpPp1ldmYfC7r5ROP/o0JapgqHif/+kHdRWdieZw63bWP49k6c+Gmjo1Zv4e/NwCdGusGySHL+qoKV6Qvlsr+5ENvK2L0f69mPyAVDgB1TcRkj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759034994; c=relaxed/simple;
	bh=A5d6iu+4Wcql2HCOI56FVHaL4jmTm+X9oVcB16wux+4=;
	h=To:Subject:From:Message-Id:Date; b=nyjSuZhwLh8a8pfacHCgAE3kI2SX6gv1bf7eKbzDLTZkDTXq6YHfx/FQ+KQOmZYuSyS47dLUwds9lvVB8B7i2yYh9itVqD8Q/iCfMkfrJnkkSSLSwF9My2c2ODX1h6aocBUUo71ddfUqsXi8zh+2KEbL0LYdi57zrn7b31zpBgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XScik5UJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XScik5UJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5033C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759034993;
	bh=A5d6iu+4Wcql2HCOI56FVHaL4jmTm+X9oVcB16wux+4=;
	h=To:Subject:From:Date:From;
	b=XScik5UJtrr0d5i0CedG5y1p+kuhVuErWJwuIp5EgAd0Af4bOvSqV1QT+aToSqQaX
	 OFQjPLI0VchfAiGgYk7n5kQLIpLwGdDcET7Rg/5Xki8IP3bmA2uE0MoYdSH/MpQCHA
	 EyWUEf16G+Bv5nWfMWVn2r8FQaDtA0Wb5LtfvVgg20UeNiwKuVFdD2xJ7zyG17Ywup
	 GwVl98e9n9RKNgi4WbZvGooztaCZ8CW3wsYKKri3IIIUWz4O1LsUYBfsgSO4F7RW4b
	 zJ6hCtrPQpeCUHZS4gANEgRCkofCtgIicLGOgMuFHdIswlpIFglO5Qsr61Zole0O9g
	 6cewIf/NJBdAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D1CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903499359.5594.10132291411330664304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe94e714cde806c774c1968209157a06a3ebdb4011fe789d0234c457388334c1
Date: Sun, 28 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759034993

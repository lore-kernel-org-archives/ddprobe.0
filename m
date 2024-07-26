Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1190317A92E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721995554; cv=none; b=NSfYgUystc1iIBGq6ocJp84RXd+XymLRVbnSkHSPRYUK24Ir4CsJ7aIm/APMpWRi1RcYTtNccbGRjpaxR18reufLD6F57X/okBkqS8xTNXWr3ZtZ7WmVIh6visQ7y/KhRdW1Jxgp0GfMEn9NuuBiIOp0UnzICVRfoXNFtxRD5U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721995554; c=relaxed/simple;
	bh=KR6Z/LebSUnhjPH8ZVv1iRE+VbCTOf47v+vHUI8GbH8=;
	h=To:Subject:From:Message-Id:Date; b=aeQ22WXWG4TGtf5sqak7iRCQali5HiBBGDktaXRVhpHis1vr1h0+x3n1C2hp6g9KwilIAPud0EA6m89iJA4JpD/qWzMNuaInPAQk4xQXeKcApDiJM+e1/psAVdoEgoCP4fpmQCqP3x3QKUlD8Nozb2o87NKNt5hRnFb8bHs/fbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMkdICH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMkdICH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A093FC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721995553;
	bh=KR6Z/LebSUnhjPH8ZVv1iRE+VbCTOf47v+vHUI8GbH8=;
	h=To:Subject:From:Date:From;
	b=LMkdICH64lKKwr5yyvzxmgH4lErDRJNjLMpsG2agoBkYRaFVzRWfy3rbmtDYMBBPi
	 YLOSBKUH+AMEELgDYxf0suKN5JhSZwWyDqRSKu4YwsYcGMhD82MXgSBBfHiSJc8NCX
	 V9rYk5LQ1sMiX/ZmZhFnLtlYXKWNdYHIeJtfueQDlLM3hs1qAvjsjPGok9n8tFP9oA
	 V4fMC9WdcbCHWrf1JbgBubIHLUyoZZnqxUAI2zVUhMJyyWIF4nQJuxmarjW1gZeDi3
	 kNEOnk81LOJimLLWgtdZAJfNLEOc54QyPb+J/43+RNIFGVn/Xb/J4PoWX2du2YSoev
	 K8vT9VYJf4P5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962CDC3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199555360.8639.3222400419797975006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defd6f9c5b872f4c60c262bfd86b00131748be86b2e429eba34ec38a6c4d0fa6
Date: Fri, 26 Jul 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721995553

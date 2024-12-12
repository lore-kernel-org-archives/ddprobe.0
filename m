Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DA91BE251
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734038754; cv=none; b=RxufrCUj7xE8LderrXnMWE/7bRqTYXRPBV7oYMoKHa3V0+Mk/2q0JAfh1YPYx6Xi/6GhD3feYSMPlYvO3MHE4SolWAvdn4m48BqwdehVRzE9HoAXvvXk8vzaVjmbw8RBvkQpyDyL5kVo5EWsn/7XvPb096t9kO1bCDgYn3d56LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734038754; c=relaxed/simple;
	bh=5URBvdKRI73xiu4Gf3ocFmAZAm2c1p4Vt9jTX9gnQ64=;
	h=To:Subject:From:Message-Id:Date; b=Me9rfEfyLL8Z10f1iiTSQG8RQKkiOVD/9veyrh9r8XzBcJsaV4wLcgLEXIJNE2u3CocRGsclLLfwYzC1JpZHv3zdSYhhxcgWMQf1y9nkwJPFR22KVzU4EkATQBNp1n0M7aLoIpP5c14CPTD3CcSgSBuMnVUXr23ptvX5Fdp3pOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcyTeHLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcyTeHLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8450C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734038753;
	bh=5URBvdKRI73xiu4Gf3ocFmAZAm2c1p4Vt9jTX9gnQ64=;
	h=To:Subject:From:Date:From;
	b=YcyTeHLToy9n/bdoZ0AUO9EZ+yzqL+poT00p9j8Y462eiKw1emMl62kdUgzeSUIJT
	 Fo8o328UKmW/A7KUcSMTj85ELtOKdXcuoYCVOhmjS2Yz79bSDXm9rDtHDdr8I1g9tB
	 Z6a6EG0pUBGvKytCfNWj3wxu8chJFsaUCObIRhQD8l6XsKsp7oL/cB/0h/TygrJt+b
	 JgL7ccvTPbzzEKsY+dA2xe7uHLN+fcTLxSu9HSQcNSDJ36wwsgbzXeQEB4eCsW10KD
	 mnM2QjcycJjF30FO2mC64eiDP2s2E/HnUO74N7qIAvf0KvFdyKXerrl5dLwFwyhmUg
	 rdNhn5GnXnu8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F393E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403875363.3421.6613230191380132903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163d8d871d22439214f521520dcf7fa28177d07d698687bd1a230a632439d5f3
Date: Thu, 12 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734038753

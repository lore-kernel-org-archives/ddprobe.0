Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B2414B08A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777863454; cv=none; b=U9aNec8SaMtp0BYT0WZoBx6deBQ38ywDu4AL7f30yBgliMDxkipQMpkwgk/eQ4vwF9eknwuL/VUbG4ymmDYur9lxT1XDTxPqNnPHPh4+0OByFDGraVv3iP6rdl2kj26pMtIWbHx4e/+07OYf0I676GmmGOLZngavk1w4xPUEtoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777863454; c=relaxed/simple;
	bh=Tmc3vDvm8N7rdupcvz9VxgK15do+rMuEsgRDc3Fqmt4=;
	h=To:Subject:From:Message-Id:Date; b=tGpkN7ySxZZK79e9AxpmNw3PThfebHPwom3oGHov0+5fXWNqrZZQOm/nLScRfo7K1RhFayhjFBpWTW4zyTepOvfrJGsmwsuMQOQKDNatD+toJgLZmSAgI2yjZVBqZE1PTqTjvma2U7fAhVGo9uX1Z3qeq3rIFmpc4v2wHJizECo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kL4QfCxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kL4QfCxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2C5C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777863453;
	bh=Tmc3vDvm8N7rdupcvz9VxgK15do+rMuEsgRDc3Fqmt4=;
	h=To:Subject:From:Date:From;
	b=kL4QfCxkUSxB9hDpA9P6t5ptklW90o8JCoJXlsGCNNsBkqNic0D7Bwfk0YKX6+VYf
	 wptMNVGuGycQsR0TFZF+XqicfW7QiFmJbO5vzMQRO4hik4X21XCeT5NXzUqMGmECTH
	 9pZAzaDgNxvsJwEj2cc0WsABJH8JBdw+2Jketp+ZNvjkYTvwnpIRLOfBcgnMGxxBGT
	 Ybubd1zrBakyDYlCySqpt6QTSgGBeXq55cJUZv0464GSaLyxFPT+lzAgAHe23GsaN7
	 XAOIAWE2Ol6b80Dw4wT2h6l+M//NqlFgkib1ULfcMc7MZtKYCNeqTRt7vbOGmeTRP0
	 tFKuPIL6WeEVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982BCD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786345368.6167.1166374877283656796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48a8642ff0f6fea01cb89a342e41352527dee1bf9c125cfa312db7d2811316a
Date: Mon, 04 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777863453

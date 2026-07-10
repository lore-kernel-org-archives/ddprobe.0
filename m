Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395FF1E531
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701514; cv=none; b=TQJ4c7DZEUfo6nIr9hwMIOOuG0jhpCuXOqt95gx/+BuWJFbQaEb9MR4Zg6sxRKI9b9mFAn1NApUL0AWm3QpZ1oeHIKUdymNM8wisKYN59vPM2OZMLRD6Xf4JODM1TAwTiglIfBM1ZBZANC1ex1ELfymMqEg6umr5LG89hrjTB9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701514; c=relaxed/simple;
	bh=Hoa7uuBV0Mog3Whxx9relTVHLc6OiCRfliT28/3bVBg=;
	h=To:Subject:From:Message-Id:Date; b=V3SsJkQmywjanzie1CVU7VbgYhUC9I51I+Pd4fEn71B4rvebQUEtRJmSGUxcfV/jPO+TjKo/NIeyCh+D71Ft9GzYLF64vZJyJRBhIEsFeViPrvC3+2AAxcENQye5EYNV8dYDKFu9orYDwYkQSaSmAMhS3GOHhclJFR1ALtr40VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFWVX5wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFWVX5wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC452C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783701513;
	bh=Hoa7uuBV0Mog3Whxx9relTVHLc6OiCRfliT28/3bVBg=;
	h=To:Subject:From:Date:From;
	b=QFWVX5wmwCowI6HRCIrsLqshDn+dU83Mxf/y3toKOAjvt1wmunlN1d1QNnM9eyxc2
	 Oz4kddPWd+VoBIc8+J83cZE16ax+FQxJs2H1G9D2kmDTfq8u6GWtDl9gl8xNFc2RHF
	 czOYnigqTydcYhYnsP7Hiaac3HCvNsZbcyCT40ouVAiVzAA9ppborSSf99MyFJZItz
	 kucaNvizn+eG2vqD34c6Bw+qVTcxZ8QNBBQOju4jl83XB3Lc2Ekr5TEWHKVpkzro6L
	 WY0pdqNRwQ191PMezLYTPnyGl0g2JxJiNqqO8HuRz6SHt3oNp1C9AIlgGfCTaQ44dp
	 Gs4avevgo/BxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA30CC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370151368.3882.2637051788847555624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03896dd565fdcd7f9b49da1e8851a1741e96e6d7f85353831b98e7d5b91398b7
Date: Fri, 10 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783701513

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBBC137F
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZS2nnBRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B393C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703811496;
	bh=UdhgxUMPABybqGwiB8nU/iL1ltO6ymbPFyclpOcQuFY=;
	h=To:Subject:From:Date:From;
	b=ZS2nnBRKda3vljrVA54EOzA03mmTCFxgHTTPRA10HHSlBUL6u+psavIgz2y+py516
	 y5WMQwPDXoZkwVxRMLHgTcWjr05ucbkHCq0ok/FwhA0xYRtFd2NIRghSPpmZU/8b3i
	 99xRkdZsZOWahW3FwkboGRtXHZqGm+A2AGAWKw/cAogWT8JGFihRR5kRxhGJkqFBOx
	 T97IIzNm/Ov2RnPqC3sRCPweKMORo/1bmWoiT89t4WjfkSFvcZHolWizEWbMg0j0Qi
	 uSkWJz9Pm14sE9AHJFdj0VFqO546V3wgw65LhO2zJdJCm3THO37rwUbC4DN7h1/oLt
	 MYYH56BB4m8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCE4C3DA6E
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170381149642.32608.3494236050182527830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72061d9ddffdf5a42e9df5d170aa629c7d7228906b898d13b6982023484aaf19
Date: Fri, 29 Dec 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703811496

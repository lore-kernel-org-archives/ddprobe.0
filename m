Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1333326E37
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZo/P5sP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8099FC433CA
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698167296;
	bh=fOr04Qlm7FzOPSoNQIbumsFG4i3QGD0kpvLpBrVvhGk=;
	h=To:Subject:From:Date:From;
	b=OZo/P5sPatYhSAk7JJZckoVTgKnm0iUL0nL1a7kk+2gdEhhM+XCQbZNJkp3fpdFQa
	 +9F2+bMQxNpG3TXvBocFiQExt//O31nR3t9omWM7EVfdm1UU4B3y+rEW0YcuqdfvOa
	 2YBTNW9XcnSd5xanpjrmZ+9eMMbZ951/nAjFLBaeoS0CmCQ3bcAwSCPeJyFlm/ksUC
	 FBmRr5UFroxBKTQVmbADh05z80JAoJ+bjqnJcPr8biloXYFIS3bo/eCs7E5Noc4qXY
	 wvudtwAUycmIyjRqTdNTPHBzWLm7JMoNduSedrfL7Dyyg//g/Cj+AgdnrAhUP/90OJ
	 ia5J0zl5c8d4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61426C00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169816729639.26274.18013240840711407050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed3201ddc594e52e6989a57882bec4c0252f84a1afbebd31fa1923dd27e4637
Date: Tue, 24 Oct 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698167296

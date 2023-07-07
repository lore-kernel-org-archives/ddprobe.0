Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5D4A23
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8B9C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688689628;
	bh=JBa/ZEJyj+wrepykaFG72Lde50GyB+KbsHeim3LUqpQ=;
	h=To:Subject:From:Date:From;
	b=lOg+izHe1udlN9rAASxR6oBmB9fKI8Rc3UBJ0dMWSPXSHShecDUonFX6dmsYsqt1o
	 +fUSYXzaJGMu7lTrcJsKpgv1cYKsY37+V96poRf/spUgkjg2RN0pGdGOSXxPEpHh0F
	 jOkP5dxLhm+rv5vS6O4UFIR3Sh/WPXYM1SlmEQga/fAtjMjPBIJSqvwiJxRSYtkHS2
	 RAa/QwSWBauV+nmn+sQpSc3p4m7/UtS8YFaOscILQ35XwP4ys7k/lwYhRJowROo3Rw
	 y9x/fvJnwOaTGaVTNIKGNg305d1EyuYtKsZ8WulfzdmbSQjK6dmZPcjOZbiHzERvmW
	 uHuhvC6A+Rf7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD73EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868962868.990.13659598739736250700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac028917e1e539112c0143bf0e6352016a71485fac9b23d787b47f38f5fcd63
Date: Fri, 07 Jul 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688689628

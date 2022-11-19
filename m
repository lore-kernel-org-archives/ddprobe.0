Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA0D2CA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85656C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668871254;
	bh=T/rXLgUHUmOReX73w7exu2CBAwfaIfVtcf5Ctj3bKYk=;
	h=To:Subject:From:Date:From;
	b=LMFNq0vpFi1DrJwVVRUrY552aUjoE4yyWERGXI8MrgUl2SQMoeueOY5B5sOLDg95c
	 rLBtABHwOCloaJ3Xp4i38O/UewZsEERoel5iIyNSUt4i2zKJ+SJ2X+eULDBkW8kEun
	 JyQTdK23TSDRixOdkJGa6XmyiWEXSOC1plWl7gruCaT4DmWxX+HT3tK9to/IDl18Tl
	 if38naOFW/pZdLBWgClhTRswZx70OeKN66kAIMgl8hN5XuGuOS7ZdLPmlWgBNWiiC3
	 kpSKj8R16nBcr6JwEPddgJHkfnP5dAKIsd7tBkrEW/PoX3jLx8JPnBYx3y5b+/EuMM
	 0e0zTi/cwtVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529F2C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887125433.21060.3374794893662212347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b3645b4fc09157ebda264ddba02fb2513c590d0b38ec958973cf16da365ac6
Date: Sat, 19 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668871254

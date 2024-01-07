Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E35134A0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7clAK3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8001FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704631096;
	bh=v5unH0INAp1fQ/a8r2foVw73y2eL5CJpWYXDeK97JkM=;
	h=To:Subject:From:Date:From;
	b=b7clAK3IiySN81b0YJb+ytSGZP76oT1rtsf7f7yp1umJzcJeEjFW5C9LkPHy2v4W5
	 j65/M0bAIg23tkAnPwcnJTc8FLuX/AdAoBI8G7g3mAJSEIr5Akb2grIg9n3HCYxZZE
	 pigdtukDuGm+7UTxt2ljr6/28/Jit5e01LjVb420z2ziNCD/j05GKbG2AtHeHi2FAB
	 duZGW/CvFPJ2JDSaliI2998sj0rd8Sl7ctpEPtEKnCBPof+pZjVnAFIE/VPfELeStl
	 vBsQtgRXFoWFrja5zVqn9/7AboBCI9M4hsR57KK6VlFzq0zPGRgk64krdKqhT6nX4r
	 Gtk3SPesoxNQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6413FC47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170463109640.11243.12711854776491714685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333baa8f8c26e499032c78a7b28c4c555d55f3c7f7d8833c0047ff460dde0691
Date: Sun, 07 Jan 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704631096

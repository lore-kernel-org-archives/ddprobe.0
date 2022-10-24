Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC8C6102
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7007FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666639253;
	bh=MBuiNw3CUesrqsjjSN6CCKSxg4wbVg0bZyvEmkP1jPk=;
	h=To:Subject:From:Date:From;
	b=McwtkWzR0n97huEDvDqcuiwBlicRaNiMrF6/sz8AiKSMgy5AyXzGHrVCBRIw2sPjs
	 b39C9c/npMoICRjfWbqcs/hjGbew3gWv7/PmUYYcTEcTOFkkyb8OszXlYJA3GKbJm/
	 Ikwm4h/i4fADxxYx7PCDiuhnnRoJWEFIzg7dm5SbFJ4MUuO2jsUeEBrWQSpF5xF1DD
	 hcmDnDamNw/Y+6cAlwn1SDIdR/AQCOCg9rTq0b1h1RpSujdGHf1eyJEXtzl7xAxKuX
	 7doDrDezxyZwunSotvzj5IorJ4NiE8dcz+nxxFFkOOOsjp2Y3wkBQrhlK9VPGSj9Yb
	 FBJd7n4VGYq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FF4ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663925333.20120.9829919366535829300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65eae9863e2a2c5c0c69b1e2aab53c0f33a0dccb181edabf8929ee1aa395f0a8
Date: Mon, 24 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666639253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0636134B4
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 20:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12D94C433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 20:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689711669;
	bh=bFOsv7koyuQd4O0gDy4St5MGmOq4WoGaDWmd402Wxeg=;
	h=To:Subject:From:Date:From;
	b=oqqTTDnn0aOadZtpM54qKyd1eNPw5j7im6yCT+9IWZfpD3/BBihYBFTVYo0OZQQ4y
	 wkqmJtqwlw5WzIfEaRVCeUjjhBffKdNJ/p6qRz+noVha9UNNIT+MvenPOGcylm7PVp
	 sfpiMJkD3qJgSVy6SjYgk6hXOkmd3wiidbo9tHtlcVR3tGFLucyEZ1oGFzaqxencSU
	 O7GIn8/mZ94RFOh/32z2X0gOEx+9uiK1+3ObXYn59QrTmkAdFbLnQSZWcR8M2MYZtV
	 MBR+XP0pdhIfEEV5GGpMizHiN5R06li4xGWGOIF2wjz6X4BGK8Aw/DFbz8abAkw2t/
	 BdR+l0+FgwXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC598C0015E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 20:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168971166888.16411.5428950862758360001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031828da7d48b816444c17d228999036ed0031f8350a7f9cc9625af1b1b8bfde
Date: Tue, 18 Jul 2023 20:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689711668

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAC4624
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 01:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00B13C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 01:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684547286;
	bh=dVZDJHSW4REhVSWtsQtnotiH8EkEdCqVJul7PiIg1Z0=;
	h=To:Subject:From:Date:From;
	b=j0KBHQr+wV1WdK48XLEMv80YuLL8twywU8DJIiIQlZQRerMFkJ6XAqpZ6DiF2Yv0E
	 TuomUxQ4XC4OVU6fmu3gopK+LXmy6WFxMObmgvCeIY/iBMLPZRnWJPrjJkEyPccyTw
	 MU0Z2wv1+8VY1Moc2/WbojQbnvoQaghTcbMpo+cVvMpPnBia/l4s+Aol/SclEd7HXR
	 eZfgp2XE8d4sPqvAHAxMWAH+bAoB4XZ1gqMrovG4dDadJRM8IwWxchBXT9oe31qqNH
	 K/7m+315wew55EZbm5fFeY9CfkmO9DKfihfg9pFTPsXDEgbdI/QSe6Lp1wPNiczlaS
	 l4YvoAWGjSutQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB84C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 01:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168454728578.30390.15617284884422754273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38529bda55cdbd9aed991b13fe306591259f6836ddbd8b10cec7e2f3e0871e1d
Date: Sat, 20 May 2023 01:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684547285

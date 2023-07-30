Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C50F363
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 13:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35EEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 13:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690725128;
	bh=2IwDCxsEKZXovXeIrUWr8Y8AOpRf5mtNxZc8qAYWIdI=;
	h=To:Subject:From:Date:From;
	b=nRATbxF8AJ6309JpQgxXhJplDt7/7BNlYjnsHjZ1YfrA95yMw6bm9cU2i4W61W/6F
	 XFtPZ/qhTacTG3/F3+snhOsb1IHIqBU5xrh2kBmd4Na10EhbjIB0p0Xz5iAqGBmec0
	 +KrOG3FeEu2Zo3sPvoBbE0A81AmoxV402FptDWKagc0gnYot70GjBNgiqt3CPubxb7
	 E9Us5vborvO6AFyWlhVrJtLAqIqt0Z0IX69NJ+kkZrZseM3mefGTLnMOF5lSItIypy
	 5y3Jy4TrmSRffZay4bHg3s6yPNQOOefpMk1fTTdU/hZTcfOCCDboIpOyNPyN3r2C57
	 +bAInZbV82LzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8166C001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 13:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169072512868.8940.70934091133555730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87927c6b6d734f1f25eb0c50afed3df3fdf36bfbf96c16089b032170c96506d4
Date: Sun, 30 Jul 2023 13:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690725128

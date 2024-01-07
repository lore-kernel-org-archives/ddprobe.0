Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7141118E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8WK8XbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847C0C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704599896;
	bh=uWpzJXSQ8S+dSdIjnRDOJQ8BCAciPOQFJVf4XIuxNNQ=;
	h=To:Subject:From:Date:From;
	b=r8WK8XbTzRKSdqdoOfsD0LEMgBpOSnPu8Xgd5y8Jd/9ODbq9MpBoKlidhy/3X1QvB
	 lKx7pPQM1DkJ3oaOA1wRyIv9V45DiDHmCtUV3dXZ1yc7xLV7Hc4HVHJh6fZXw1YxrN
	 TfgDzowM7CF/PIZAf6AzK9Pw2TcV7H6r4Z+gLIVYzfe2xW9LT5tlFmB9oiVU8P5oLQ
	 VhkyvKAzL/4svKh+NEf9qeaNw+uUYZG7K2gtztR3OEu5Lowoi4y5u9fMOQ/hRs/YYh
	 88xPO920NPhWNNdIM/ZiyuvcXwOBarXywma7pqJo7iU5jrIwriS0r7D8hSpc2jJGfM
	 qUJU96hslYusg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601BAC47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170459989637.10211.14409752945043297371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e21802d5f5c9dbee7fa2d2b6d2dcd121ad9f451b2a26b8c745e5d286cb73456
Date: Sun, 07 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704599896

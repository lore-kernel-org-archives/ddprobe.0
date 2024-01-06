Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A6363AD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkakCNye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8451EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704533896;
	bh=KKd0rn5wGeZWiCLJRHKISNo4VhiYDu7xdjsoiYGta2o=;
	h=To:Subject:From:Date:From;
	b=IkakCNyed+VpjBk66b8Mvjz2zIARuATd7kOvg7c/WdTPRUolZavlloG6z970WcE8y
	 xlgJ0qswRA+qe/2z7RUoXWiqRtti9u7lMNdeojATPjNYI4E2txtLQHZpdwvO4h2dW2
	 FE9Q/OcpJI4BY0qXO60mlQvi1/OiWFpvbPWcv3MGgI2Jo7sotsYkN306rHsgdZkeJi
	 P91xpbKte+Xn0zG4R0hFPnIlqnk1ZKV7Q9pUvBe+sA7C5xiNPS15uiU1RB6G5ow3i/
	 XC2ViMiwJibOzeHA24Wuu9k5NmIzONdD49AqWErSTktbtxD3LREb3XSqpJPhiQsm9E
	 F/CHA58YSnt7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 664F6C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170453389638.28034.10754382907251246405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de1721084216f9b6c63d6ef007f114d2763cfd0d8ad14214a37d4d7035bfbdf
Date: Sat, 06 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704533896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404CCEA3
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF5DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679919785;
	bh=ZYJ7AsqVJzM791U/K/ophAgNY54TT9EMDho+HDx6ECs=;
	h=To:Subject:From:Date:From;
	b=FX5EfNEX1Bvi8oHIvNr8oLN5k79eFe8ly0faFz4F9Z4lMoDD7toK+Dw9aPdoHUMqv
	 IvZYIcF1wSrcfRUXDB5mlkKnQvRnhQ5KTSXu2RWPwaSDZZdVLO5eBobL8CuGKOIEm+
	 s3OZHAw+L3A0Nd/yEXdniPwl+7+8oQ7vDUbRxTNgiGplWxyRDHeY+zWgoBv6TUui7X
	 ZArvQ1ji2vexkujxXTCJNEKqtPJc6vsAepoyDcXXNmuWl4KhbCNQcb6CRXaiwAxZbv
	 2s3eWBTJbAiwpO5po8uZpXqH8xSIc/5QhnTHV63B8bJoEvKptsHabFMQmSDiCubMU6
	 PGCWMVoupLx2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE3EC76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167991978576.12475.10602028169071970646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe8d63d03eb040641325e44aeb69e129383857e391b6d27dd15e36419192baf
Date: Mon, 27 Mar 2023 12:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679919785

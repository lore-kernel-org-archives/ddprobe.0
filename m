Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7417099E
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blmJyopc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81185C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701926296;
	bh=3XtRDPfljJ3c8ckB4e2P7QoSzRxkt6IA3SaxjHrk+bE=;
	h=To:Subject:From:Date:From;
	b=blmJyopcFOIlGhX3eltHxyVYDgdQGGBpOwrV5C2HDC7p96HwL0DyAsNlUEP57iUxh
	 0khAWtLd9F900aXQ7lJ3pi8SkyXd5peIspOgexjDv4taHpJjle22iJuycsPD73YntK
	 UFj7w3WtA0W8I8vbko22QJkoPv6ffg22J+/hAWiLmhLOHX9+92OdxG7VbubCy94/lQ
	 DO33Rdxtnq2tOVKAiQ92cf0ros6ad8oL0ruRCnyxe7CZB8U5FGmgYEcPQUceQ7+S2I
	 NnjurQvK8BCLAdwhvSmprYu5qZkiOx/RLD9Urv1WXzKDDn8aZnZboSpharPFbDQVnT
	 Fa2GMNKdmZGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BF7C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170192629638.26889.17508782641352228942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79df88780a759b6664547b92146ee3e2d9a13fb9e998bec8ad4d9ee2eb2f1ac3
Date: Thu, 07 Dec 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701926296

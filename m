Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9786EA1
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CF1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672281087;
	bh=SIRQGoUGJ9V4gDLrT8G9tB2eM15El7LCeJu2qy9TdHw=;
	h=To:Subject:From:Date:From;
	b=HWWcoK7q9VlFbpsvgXc0WqaslCe+Jn3mRSBhHLj7yQhQ81/GferFZfQCT3pfH4C3d
	 pQPp3bdd+piAPIYLgOdtvXPbsKoPzlPmP9lmrmxzhTAvQEml9OBOzn1qXZy+TSRk5k
	 gndopUFlvjfgMm/ry3e1lqadtYlJNWOK26HFzzsQECv0w9qdctpaF8DbtlBpK0QBaI
	 mamxQg1g2PNhWLe1SZgj0LFbJRKKzQJSRE/UxvolzmO4gtbaPOjdXMQm6XtPk51Wbi
	 III2dnnOqX98jZ5HSeF8785h+wdMq4L0UntmSPKV1UhfUrwxHYvT8wcdFSHcIIilzY
	 50KcyRDJVrk4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6911FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167228108742.13244.17291546916272142012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00bc2b3971b363131c04037df98051d062c3ba044d53ed21e3be2d6679b22e81
Date: Thu, 29 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672281087

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D252C2F22
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80603C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671652287;
	bh=85R+Puh+OdvR4Z63zrTwmxZzDhhVtOtbPcaVPIQOa+Q=;
	h=To:Subject:From:Date:From;
	b=oKlPXrZSE+ugyKq+qtz2Dgb4PujHZHYRuk62iZz56M8STpsMIlrKmpmGhWikyZYFT
	 WLFUSdVAZ9Sd7tjINcJTUNqY8JBgpwcVQqVW6lOVXgi4jYAQ5a3P2WX+SwtOLtTWao
	 aq1iwtsRuvKOVoYk1JD8OOrmU13e51GVMBT2ldyrSSWV6gjAHx9M4W60UtrNIQcjV7
	 fp6B1VCgN0AIh3ci0jsNPERi3uEtw1WR9JTdbK0zGmHlFMCtTJwNZN80SY4uRxitE4
	 S4lqfHNWtbtih4iL8BQCNNfOnJZQWpczYnpl+z0RWziAO6QGRHQOFzyPW2+fKcm2qd
	 lB89CpCfQrj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65518C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165228740.919.522410023183536390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c765ccb6a8c3a5683a50294366024b4d4c00c75e79a1e66530c618d55a63790
Date: Wed, 21 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671652287

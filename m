Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B27137E
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A33C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672231887;
	bh=hKTNUQWxBIxWn7IjgK0KtXOac6pD6nXAooT5mevcnoE=;
	h=To:Subject:From:Date:From;
	b=SySYeXHfaudUvUb8LQ0yXr8jgOZ4SqF6sCPnl7NQ55xEz07xy6IGhWs867H76iYGO
	 SK5stt1blLZTkZH3iNEfKsJjUeHt1XmUjSSvH5PiS34ubqHKvrrwOTkaOhPp+49jiS
	 XdEV9k7g4DL/UOd3/JoN4S7UocaLdvbiLRZgHeWAfgCusBDSbifDOsX7HBvB4thS82
	 3yDXCUCvPZuJVWrohFDxWG2uWrrfuZAT5ig6Gs15G4BEjwa1h4alzknZ7W5QaLjEyj
	 xxr/mEDEc3XZC7WHaoUOI1fbyRkTyS1HIglkyDFp7OuHEq9uv1ek5BtBgl2lDUyfU7
	 KSqxJuTK2TfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655E6C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167223188740.8127.16875545573306433696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5a2ed249e8ca51c233906b68a37a88905145dd2d434891ffe2b45ba759d82a
Date: Wed, 28 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672231887

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5318B13715
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B39C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689357668;
	bh=BF+ClLWJF9QFJnXSHYEhLsAsu4GypzE2U0Q/cf4GyK4=;
	h=To:Subject:From:Date:From;
	b=ofWBowhUEWyUmt5Qb7PHYdesjYDbZPHMshvla/3HBknV2U80AS2hVniG4RUhExXbA
	 RCbc6JlIikNKmaEFAA1hDxHJfKsU3JiuS+4kTdgx+xfUKDmlDU0cc6Z2Ie7LacyMX4
	 4WfmSoMh1vMKI6tRkwV+GyqqRMLt+LOLHMKLFN2qhAtI+LozPkXTebP4jN/anzsnEO
	 sodukSp4kpA1Q6y/ZDuLzkoqKplEQJDsl+ICT/t2Im5dFgTLPDk03qFhYz7opwlfqM
	 P1lVptiqexoAfqf0M/9KxDmWrh6RXU3lZY19zpJKNaC4qQyguFNexQG6y5B1yvzRsh
	 9VvBSoGffvC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70D9EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 18:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168935766867.21114.5552169720871663021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e08f2e4b9b164e63f2ef46a23c4551bcaf404d5ab2e30da67269c1c5ed9093
Date: Fri, 14 Jul 2023 18:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689357668

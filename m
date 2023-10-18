Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8541C199CE
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 17:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV0IDDa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BB63C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 17:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697649493;
	bh=dZ/T7yZBWbdRzB+iDX46VgtIlBHARXh2Ismg5axhXz4=;
	h=To:Subject:From:Date:From;
	b=AV0IDDa1EQhFdeyI0E2BsfmhT97MnDJ+GSv2kbHwXTo3shomU+PWCB6ASy4aNbHi0
	 AtMwK1OmSYwCFm/prXe7UtR1zXx+siMQJzJNdsWQ5w0cOuvqmNlaVW0Hdfqyk8kqKD
	 S9yh54CfXABYNd3Jv4lf0W5Btev/EP5Ic2z7J81/3NzA/s9GaykfAUi5wvdKaSX/CY
	 0txRy4k8jNM7gNmHvUFmu0/OO7czREWqLHbswHjHYUSFwBFizJyLCcIoWSoHuQg/88
	 lPgoGjiFVluBxchYERQOkZvC5BupsRcjgpNSxLiTJy10BV+JTZHJStrLISN701AgQ6
	 QMP5Mtm4BcHWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2E4CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 17:18:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169764949290.8613.7229849888205253109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25abca6ea1840acc29aba0575b4511b58088ebabd26ba9546ec4047c7043b860
Date: Wed, 18 Oct 2023 17:18:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697649492

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513C679E2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 21:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E52AEC433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 21:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680729425;
	bh=pUO9VvxAY0alNCkFXWLRnmZ1m/HJ0Lhm2DsZ6MXj43o=;
	h=To:Subject:From:Date:From;
	b=AIa7QZ+CPCuXsuasV1axlHTqHyEFb9tuCoQmD3kb+yWwPqkcbozJGNnqi0GUjLGFW
	 vFq33ap8tFwEwUTbyofUkO2c6A9dZyRpEbLv/vkxyBlVKsYIAf8+q/n4cXao4bvh6r
	 6g5Aeytbx6/OkqGmYMR0Ot+XUBT3iJ27fBhvwpqP9vxHnnavlbgcblH+z1tpIDzQMy
	 Ubad1axeYjCLNv2aIRrSVImmzcJVzHJI7hSg5JELrIvMc59hCXl9LBJGDOBCEN+MoP
	 r3v2h8ztnmCuqtCfOVLdOMxSndDbCWv8Zc3XZBp0KOXVlBhInaZEWWEMurSs/5u2mQ
	 LXYTiyxHCIZ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF9DC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 21:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168072942577.21412.14889012171544769243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4681a47a1087c523c14e269730a9d44860e2705f4310147e326540c6960ab82
Date: Wed, 05 Apr 2023 21:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680729425

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE6C17CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81866C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670997087;
	bh=5oWt+3xB+now6IpbPD4dXoOSwjXmxCt3ipXk4rbr7Z4=;
	h=To:Subject:From:Date:From;
	b=Nsu5P8JOwp1Zh8hYTqvvnIR1cZ4LNWq9S+axvJEv2SBf4oPdklC9+7Q0pv0xSHPk4
	 07Z4pxKiV40mkHmt5NBNO5eel+PhcY9fUdQuQJIjoT2iI4U/zqkd/WAyjKR484UpWi
	 xxVz81v18ZGWWNLWmGy3lcZ3DemXpnQas/noBXAan2hkskt1UdgAwLVTtudPNGuafB
	 zsFMML0CSsdbkdGWrZ5xHQH77BiieL5l3Nq07uY1bGZFidn6Rh0RwHSXdm//RWQGAG
	 WVhgXVmUGJoC8g/U+zhJCxXjzieIdlqxH6D5FmbfED6zFBIqUOoCK/w/HEkM0MOGQh
	 WbKcoO6CNLQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63991C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099708738.10918.6670211600446137870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345fbc5e8a48e1495d76233e85df299eb6f22bf26dee845b9f8f91ecbb48191c
Date: Wed, 14 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670997087

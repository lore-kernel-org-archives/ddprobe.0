Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69DC64F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE81C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669710654;
	bh=Hqznb/bABgFz6wRySwq3382wVZLJVIWPuv6gz72qJmE=;
	h=To:Subject:From:Date:From;
	b=fw/WJsu+U3vKKLNxBUT7X3zaCXb/z1etpB1IFzQZ6yolLQCZ52/yE7NB65TY1N74i
	 ZVh8SBEOd1YPH8gD+3IYn61mniVGAQFgfqN1s/ORv5Mtn/xvkAGNVziuWlkEtBbqbQ
	 tyQgBElFsSBwxg/Q+eD4p3/QGuetng7jVXtglgMJ+b0x10Hgha9JOiw/tRqgy+iGuZ
	 1WB1eVpL0RrKVhctxcipfEkPoo3cLDIpGSGl+4uM6hsploRCLlWDJiKRSwFwsUMOr6
	 6Wa80up5/NhggreK7BlWWnPP9lIf96+jnsU5wzpn0+wDS0Yum2VQ7Ojz4vNyNM8KSS
	 tHWpH9WDM+iNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5631EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971065434.8017.938614251127005415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be75d15eb31011c9f12077d5bdd93fb2f2854ed15547da9c26582e2c209b6d5
Date: Tue, 29 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669710654

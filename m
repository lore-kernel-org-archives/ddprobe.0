Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F417210D
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 05:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEEEC433C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692162788;
	bh=nOUGchmdJ+Sego3+vP0KAy9p2edkqas0bF8rSf/3PDA=;
	h=To:Subject:From:Date:From;
	b=hd2JiNkjxr1VTMQClVIyP8MuOXDjboWFXgB6xx/zh25rm4HwFfe7epXdu3I36KXpG
	 Fhj+ijsvs4sVhr4j9zfi4Sq6QX2zKUJllH+dCPiURHsqoPdAbHB87wH+flXhvpcJ8E
	 2+yDgYv5JSFSwwj75FZzlnFB4RTZ7aH+n4igp0HhJA2/0kjZlVTa9ifsCHsVepb60u
	 FYinLYRnP2K3ywMwvbVEYMdz6AvLoMGYfGqHnLSk/dKClIXMUT5XDJ6zqDB15DigHx
	 KQKWb6gTgVPsOHJEibBPS8YnCFX0xjwScSwln14sCX3gMCofY24lepYg5SpK2VhyrJ
	 1w3oZ5Sc1kr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CA2C001E0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169216278870.18391.6932984779200726587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a05b254e9431d5fc7f5bbd59bb1218e8749bbd2e1a354f1735121e29e27eb7
Date: Wed, 16 Aug 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692162788

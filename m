Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC936FA2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 19:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECBBC4339B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680117425;
	bh=XTcXCD0wdnH8wgE4hKggiVVTT5veaZCMQTrDEKh5rLY=;
	h=To:Subject:From:Date:From;
	b=OOuE8wLMGBgumSNuX/kQXyg/1xtAuKGhUw92IhO2DmEJALglAU/cKw30zbPa62p5i
	 P//CKp7ODxjaMRUceipbJrkUduJ9FwC/CLoJ+0xPLdwOzYn0Dm8qu+yDELz42mqGwN
	 HgbgXlKD6kI4jA0xFdTSSRn+VGujPMYGU9pe9tn7nGgqDgefwWPD06bb7CR7OwcuUU
	 zGGvUJDQ7FB5HXtghHTP/9WGU31mK3j5IxHEgBir7w5z8xxSEV46bwg28griI3HGbv
	 +400NhzFwu+tAxe78chq8i3ZKdU54eHP4Obd91J2ypQtbcYftASFBiXPPdQul91ssr
	 3wX9IAzDeG+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C258CC74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 19:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011742578.15200.8980216595390858554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28862be594a100551fd118562295178e2a35d8a810c12fda76884b73aa27c9ad
Date: Wed, 29 Mar 2023 19:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680117425

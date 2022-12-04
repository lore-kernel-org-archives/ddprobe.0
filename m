Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18E07C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78507C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670190054;
	bh=kxAkC1e4NEZLEpswXZVxW2XhjUewEIWpsjqbH4vUfm4=;
	h=To:Subject:From:Date:From;
	b=Wo0jxCzcP9UUdxH9DfZeAVvV0MlpDoywCdBW9cNwot3SiOHLBaIULK6UERDrKfhai
	 +Qhqynw8+QQO89QDRz3Q9VieZmAnzUO5F5PUYAhAYHEITRNnf6+mmuXO5W1a2ZAnJW
	 jV2ev8xnfsuW06IlvBHDSK6bqAzjS3lXgaMhPO3DzF7upBgq9t9Ian0UZWvBy/l9qC
	 LLYbsuxOGigIORz+4Gmzt9nt/LMs5s4+0vEC2oiQBLpQwMgNAOT+HA2nUvvF+tXZrc
	 O/OJniBqcRzUW0/vP/JXlSAQ7+WlSA5BGpGNDK14rUE04o6HNTN/VB7pe0rtSCIgaw
	 n4hiBL76Fbj3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F6EC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019005435.27100.6932610759182212758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b102cf703d20692e2325292034b4518e3398204838f0b9128116f195c6a304
Date: Sun, 04 Dec 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670190054

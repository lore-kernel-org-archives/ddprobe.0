Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89397C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBFCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661688652;
	bh=OXxoL4PCYf4U+aMCjyUB7fItvtSid47fP3FaMWYzesU=;
	h=To:Subject:From:Date:From;
	b=EWbZgVZosP1yeVbWqGcVfAXBxYqsRWezvo11cB1JppiA259Bto3M4X4aXOdqPm570
	 wWF8Qsu2aRtx7NiGnzpUAw7ghum7JgKPrEbdUjAAMpd9dfPevM/FLliTxot5EeN+73
	 TiA0ihVeFh/Jxj4WjZvZXpt3h8Aq9SF/3RaOQTO/0rYRJ76Zs2rFUlXc7tJMu5Jzhu
	 k0RmIlecS3iqqVoG7MiUzPdHKgRRtSXwsJK6abUFb3aJhjN+8LVcMl9R3kHK6uR837
	 I3rbl5vTecP5zUzu9ybysXEpnhFlMuSp9mqem0miNqFd6ApluY9z1uWi7WK0Cn4ezO
	 E6Z79iXG+wigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526CAECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168865233.7647.12007236223122301678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073722dfb675d8c01b8bf63604fb072f246c342e0fa4a3a2b1f9fa348f302456
Date: Sun, 28 Aug 2022 12:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661688652

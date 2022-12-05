Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FD8EB0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78155C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670218854;
	bh=ePfz0R7Cg57MgXJ4hTEjHFkidYcuyWwVs9qZJ4qwkjE=;
	h=To:Subject:From:Date:From;
	b=o3itx+G1iGyw63y8xDjSYLlKKte5dv5iCu4FTuMPauLo1zEa3kgecUR9DLtp60lCX
	 Rmodczz/ck68gu75L04OD/paJI5KZTxZbUU3aU9V4t+8e6bF646v7Tn7E+jdiKt/Sq
	 x6ELESUpgpxh7Oc52H0YVi2MF9N0Qy1mig6uSlfRoffw1EUZB8Sy69JPOJR8Gy/O4B
	 yUwn9lFxiiNDBJgsd1ugOEepJStAl1/oa0UGmF7JKpgZ9hg1JR6pu2VuiygkaIKUvA
	 yw8byiXvVZcmV4ZqUQYHRGXoWTDYPH222FPmCRDHKLEmu+2NUh03SmI1TDREEqs5qJ
	 hRtJCKvOS6RIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF2AC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021885434.1105.13371831128415990275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b28dfdd57eed657e67ad08f7e11e7b3711d4e9a6b671652747eb9a38b4ea59
Date: Mon, 05 Dec 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670218854

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0B56124
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 13:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE533C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688478368;
	bh=LcMWhwzW0bVQ+VpgZF10USbbsgZejd0C4UcmtWaxIGc=;
	h=To:Subject:From:Date:From;
	b=kpRsZgknTbA087z7kOjbrm8VloNRwpiMUugMO1PqX2dLdUOiDYq5aMkl7/NfTDJLc
	 +NC4dbLKZbeU55e+b0572JymesZJ3wJOnFqC5d9JQKCI9j6NOIFqko6y5wVIoXxvvs
	 2lbE1YwAifUGZyrHlw3z9ivKY1GJ4hLvKfg/Cx0jdDUM3s7SWNePs6adBozq5mAhCM
	 PSXmvo1gYRyRsviyOHLd5MXTTG0/eVeGvBkO8oaeXrX8ydrX6K+Sa1C8CX9iY6dwZX
	 sElvVOmEI89hOGhdghoMT3Oyb4UN05i962vOoPw3TMXfZCSqd/CbPGfGiWqbCN4fcY
	 ZnR9CmTSPf3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE174EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 13:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168847836870.14405.11931029159361373076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a417763b1ce06f1829119ddf7469458d941eb36cc96e14e72db8db9ca708835f
Date: Tue, 04 Jul 2023 13:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688478368

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70C07C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76341C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669779054;
	bh=67Icq0x5uiOo493Q5+1Cz48qkLWfA6KNTdWMra4DYDM=;
	h=To:Subject:From:Date:From;
	b=Ck7JOJc8gaIpgjveah2YdqfYkc0MNph9gyJaW1w5p4al4z4mX6erPejt4XFuF5hPG
	 4JhY2bFqaRMVdEU3a/+lTkjwu1Seu3DXdU7SQ8sHNSj7pvJddaIJFLkfI3VOBANES7
	 F6m8Zkip1+NaMeU2Phrs2Ve1umb7fp7o/U8XK3jbn4pmNYaYnEQds1Tai+/Mvbar8Y
	 Px3NnDA7Zg7Tr+Iw4O17vx616l3YJcn+SvY21ZlWLPqln4Gf+AJd92FW7pWvEhZ/Qm
	 QjoEBEXabKfcMAkM4Z2qqc/oz9eP4z0xrwJWiomq7t48Znm+Y2dzBK2+yDuXsAwVmr
	 Yk+IVbEqZjQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A168C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977905436.4075.16496741859187518507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90c2e423a24e1f11fff919ad13d279691b877a8200dccd46cf7ff699f31bd92
Date: Wed, 30 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669779054

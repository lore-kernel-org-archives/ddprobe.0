Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B562F4680
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D57CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665782453;
	bh=StrxCk2i8OnJ7jfS4TqyGJfsbqEQ3Aa80/PjhOq4zwU=;
	h=To:Subject:From:Date:From;
	b=s/Txe4esRg+TkS+BDxhL+j8jVq+GDYzhltYIzSSM9oxz/VcFGvV80tO3hDZCJ4tSL
	 ID1gf/KJlE8Xz95GyXysT2MyC1jzEF5lvT2gAcn0lxHEYRK3pXEI/b/pXO+4KMEjZ8
	 NGjpNeC90oifTZuJRo/b/t43z/ppBJnoucDOaB3nFx4JB0xGDwOj0xLL+yEBABKVTK
	 wObYWIyD1MHO3/+Ze4AaYaPsuWJGMlaPx8fInc8JaXpnBululzPQjiWdtHjc8fvBHG
	 eFt6Z06RxKn+iuCM2+NCSNfE/frHPuoDf5aOGjrwMFuSfX4CPG4a5bCv+k36xpTGmu
	 pMWiu+/qm1ogQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56292C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578245333.12526.18420568141588994353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d6ca2cc0d34a7b511066ea139445a48ac7a1a810ae955a36e00098387728b2
Date: Fri, 14 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665782453

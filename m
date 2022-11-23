Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C535F1C04
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7785BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669222254;
	bh=9E3igCEDLkVZswuek9L1uzyfOvDghX/Abfhw+5hytzs=;
	h=To:Subject:From:Date:From;
	b=NtBQ6kvfhi5u97td0EBTgV0HgDyFbhQJL1wxjbOkIjLmQDHy3TinTSlt+OO8ZxSvA
	 1pOng49Of31r+KGf/zDSIuI7D5OpkchTwyvVKCio5ffvcYQfLMqhGaMhHjb8NH6DAM
	 z1SmCULh/6HrRoqgzb1q1yWSUjt89YwrUv1VbFHMZS16olrhYcNuzXcC5mcbSL+Ckv
	 iBdwxEV6OnXmg+pCnwBNDdX83PQioIZH2uG/JLYjybrA9dCpwLdlOiSLCkKeNwSdJY
	 KmArcvRKkvTsJ+RNjNkHxM3LkeralcZTRC6M7AFMY7l3w4EfDt6d/XUn+QXPu6p0rW
	 jhK2+GFAs3Bjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EDBC433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166922225434.13004.1748253243553250949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd2dadaf5bb0bc47268779bf2e1d0c70bb958abfd3b8bb7c8ff24b04e80152f
Date: Wed, 23 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669222254

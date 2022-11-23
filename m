Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56B07E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793CDC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669177254;
	bh=sR0C/pirFoJCNvdLbVEdzC0Puk3b7lPYmp347dsj7Pc=;
	h=To:Subject:From:Date:From;
	b=jlKLQPdqX3zlF3Ry7j0Y5ItmMwRO2oKWbBKTZQWyh3Ucsrg3+Tu+yttqd4uf32Mgj
	 Y7ML+CXFfu//nTXCA3yYR1GKBLxnbm2kEnN9X1ovgjDLYXIXEXwuECy5RZVBrRXl7m
	 XuK1YRVRW5WOWcJhIHw6Hv39VvShIBZ/Ca3EKaNkwXizebj89MtOKodMwcVmFRSIeg
	 7trDbXuHMzGWHC98KasNN1TXkDEwkK7BBhPA09EHvXcIbBVyfT+t0tsZblR/+aYHsd
	 pg3Rd41FSTYFrEKIPgDaPME+slK8ueziZ/X2DAhGitqhZWVFRLxhxHMPoRLj1VqQhd
	 XT38/ESwVxj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59204C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917725434.29400.4845093912951414046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ca3a9d20190889b6836b6c720ad6fc539ff94cb64ceee492b8cf7170de1ddd
Date: Wed, 23 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669177254

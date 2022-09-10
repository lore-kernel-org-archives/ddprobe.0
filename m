Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C715B1858
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708B3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662837653;
	bh=7+T/LoJeLSyWGl95Z7ti51OdiUIYpGsYA21svPR0DYM=;
	h=To:Subject:From:Date:From;
	b=XdxhGh8ymri8L2dc843loTHp6XuV28Otrp1f96dyFVFXx8tH5vNJa9aYJLoww4YoK
	 qeOA4djo3kpfHFmSZ2Bwsxlc/hJRfbqSV8iLoSoNl2lQaoI8gZ2PpGaPVmcSnjfXiv
	 gWoIzFtqZlZ8QrQwoNX482m6H3Ht1hoa5oYvzfTefpIF3I7tjm73+ZXlmsjwWD4Oi1
	 cULHkrWIboHPLr2iiQEO9CufvYMMHyUnRz/v6w27CT53rqX9Lrzy9NlcrsOfcHa29I
	 Yyci12hmylGZ1yS1RYHwIIt30JiheqHBIUrMnQGAC9YZGpPQkBOLXjZiCeTw6EhPxi
	 CuQ2gnPWhVWsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B25ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283765331.27383.12993154358242376239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a9ceca713aea47cf664ab3832810ea15e2978a6ab48f327a465dac163835b7
Date: Sat, 10 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662837653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA29539B
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF59C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662583853;
	bh=dO0xSNkfzFQ8eMaQ3X4oN11FZgw0r+XCZS5h4Z9LtP0=;
	h=To:Subject:From:Date:From;
	b=SvpA2u6zOd5ELSk9Cl9vkmGWjTOHXpVEBbquWkKZYY13VvX/swyQbqXZ6Av+h76xJ
	 bh7vfGMDvrfgV5OQJU9d73+R6T5SLf/bQowQuj5nzt5jpS3sdaUtrohKVFvkK3p0NJ
	 8iMUL65DdtpGuncTRuqaKuASqLL3/17L1Hj2+udB3nCAxbhV9E8nJRsz0EzFAQA1P3
	 7ySCmjHX77cQsurBZO8Z2gSTy4KaLE3o1Brh5haXHw6KmQnpsoELkHNbFJFUiXOKPO
	 z6LOa6Y+4w8T10idJwk5WpfLDlm3Hi+VsqqLTaLM4VUNvLljdMflXoy72skLzSNLz7
	 PVdAnSeXBoOMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5279CC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166258385333.29240.1404936833591012788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b754cf84f95209a1c1cd23cf2fa0bcac2241a5bb5a3d99d35907cae908937c8c
Date: Wed, 07 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662583853

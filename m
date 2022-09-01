Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FFA7FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFC1C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661992253;
	bh=Dejiv7qxnncPdO31efJIvs51U13ETeYlXshVa3+1LQ0=;
	h=To:Subject:From:Date:From;
	b=YN9u2k3JhPI0Z9ZODxQtglJB2ZW6Ho0ych/GqPspl6JBCIjob64wRDREvaFtEz+wT
	 yPVinkiozEt8jI5oktSnSZsjza8w9PBXAS7EmVlKPsKCWt6VJbBgYaXCDC9/bGEZkZ
	 kTYZcgRJYJjujgCCBcrJtkdr3FCF2fJQJvFJmImts85rVf7OvyJJQ6GEssb+X7CJHR
	 EA3ogGwyIT+9Jhbv6OXgKHuBk9hBh9h/FRsKF7HZCyr2g6ePKMpDReLMz3Gr70QSv6
	 PgO3tA04AePhQvGMlOQ7XDtqo9IvMTscWdE86d/W+Ik7z9ssEIOUI6YXqKrm/skgkh
	 A7LBBnSrYw2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F311ECAAD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199225331.9677.11587866183223371896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c08ecd2710719983b1b286c2411b30050b54a15877cc765e1b7cdc071be5e3e
Date: Thu, 01 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661992253

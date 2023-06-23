Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6157421FF0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD773C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687516388;
	bh=WUmHiHOxyWGeyaZaDajDxDTKoJc0yo4d3viuDvb6nMI=;
	h=To:Subject:From:Date:From;
	b=bEUlMe0wqYiEnzXSQglYmz5NClMOYR/gEOJ5ewtexrPJAln8FRhBGyzXulTx0GKCK
	 VkBsn09GzS8TOACT4aGivmpWWVKLJz4iNEP/16TDBbptgHTJ6Dq93MddmyilU2WBo4
	 uzjCdxpfBc/Uip4+xyuAv6zFNUooXi3zEBeHAbUr4dOmRiauHBPcsl38IPJfgH4rad
	 5RQVZLpd0b+TTkFYf/quJUmNaOnN1nNXj6YS5DjTwe0hrWNVI5LGCFCVbBJHNKIm4J
	 k02gnYqExw64743Bik2mcATiXJhi7BUdXWJUVncfD4uIkHBOJzXIpLpKE7hsaSjvQI
	 mM68CI5WrYBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADED1EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168751638868.8585.4978448884539468525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5b25a3f830d17758631b0d02e95e34708a089f9170bc949b49be95e85d8581
Date: Fri, 23 Jun 2023 10:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687516388

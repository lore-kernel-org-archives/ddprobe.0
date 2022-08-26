Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80321867
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB9EC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661473852;
	bh=JnfCZoRfbtpqDw+t2UXeCrUmlmARE3pTI0chCwmCJdw=;
	h=To:Subject:From:Date:From;
	b=dCdL30kOafw2bo28iUZKkkcFYS1cbfRSJr76UCDtHUd4B/D8oQJNzHAKo0SRtz9dn
	 hPniESmnPpOW5gbd8gNDn0/CwNTAcvsSXOOPdaTxmNjMQqSF1HL1YM3+Be0YVBelzR
	 dAEnPb5vnLekegTR5BT8QoK7UiHfvM1l9JN42gQBZUhrIEAkpg1B80Z200vIqNqtfo
	 EYZNoE6q27oVZDwogfBbd8X+4kwma2X+R74WMAcChfFvXaQfw4fhQRY5gHMCe8Vw3c
	 iKq4z/JiY425o+kPE2p9ABHMJ02uLaFXo/jZkPuTcoPuXlrBkj41/N/jgA9vPUYNiN
	 iHDO3+PDh0SCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52044ECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147385232.19663.11173266083426241089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f810032cc543668a0e0decfc6f84d232f95b894d901e6935d34c5ef16a2e49cc
Date: Fri, 26 Aug 2022 00:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661473852

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04E66ADB
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1B6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666650053;
	bh=828AkPOvKqZAWI/VcrWchWj1un+5kiIMegtwu2aduBg=;
	h=To:Subject:From:Date:From;
	b=Xwngg/8/A/8ehmhPpmH8ZK979uCUY61eUKimT3geDtsxKr2BeIQ6XtrnBd/aWYq3E
	 h4gGyWAb2+iOuYd0RqbfNUBcWuG1OBszbA65iNtPbhbYP3P8mPGntWLhLqPLufP2jK
	 9QA9/ArkalagczWIlc3izzaA3FyEOuTYt9fpWjiRkxMJ7mUSBtKCTOENodcECD3K4w
	 moWU1RkEe6+sqfimyQw/YI5nPvGqY2TmB4Mp5Ri5CMMGNm8u8PWqckOaIpagGbDUcg
	 D2FASYH9egqHZGExuSX9/7UIDwVsSmrXvPiVuvfwJF2/pGozVBZTMjRDew/zI8nbS8
	 XmrKZS7jyT0Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52384C67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665005332.2272.8185569716102231074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3acb698e3ac30d6deee0062a487d36ea8f447c6f06e1672f51e9f591e673f2e
Date: Mon, 24 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666650053

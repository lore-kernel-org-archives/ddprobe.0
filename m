Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412357E
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1554C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675307765;
	bh=wRAh/Tfj1p11Q+N+kWJmr2DgGJ8DhDNwGN0VmV2KnAI=;
	h=To:Subject:From:Date:From;
	b=TBZvLXaKuroW2QXyd8wBGgRWO/Zv4/I6we4TW8lhHd3dTYAh7cHBOeJR4AnNoO0QP
	 dvsiVknr6XWKGCAIon8Q2fOzWOmiQg4gYTQgzRbWKKrhvVF7GggNjiXlLqmJMu8rSC
	 WQ1SOSmRM/4V+118QHv4j8i0pGLf8BkPoIrpU7yWezI68H0RIXtVzIBnSFa09n1QYY
	 beqEJkMW017kzPcWCrB0XIO7X/aFk09coG2YO9mt2YYj93RlEcqOmrx99XLYQucKxN
	 ULYB47theGH/sWltozI4mKxowBG6fXV/qH/dKi3a1kP8Ua20cO/afvU36gqvVy16Nt
	 o1MoZHq8GbSdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4166C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167530776576.3144.2446158037909038486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40be108b3d86ae762a4e33ef81ddb14436cdcd83822b460236feb98015559012
Date: Thu, 02 Feb 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675307765

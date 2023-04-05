Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CE82C9A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 13:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECAA4C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 13:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680702426;
	bh=0abPun/PYgo46IaiSynfmYWQCMfewNJcU26Oam7Mxog=;
	h=To:Subject:From:Date:From;
	b=sy8ymqAj4WuABaQHMTEcCk3dradfs1STCG0K7bPl67oikCXyeTFGEDLFciXdiYAam
	 pLqbuEd6hrDb1hzPErTeVXGZMoSrDmzQf6WwRLNA8g2KNfgWtktj8Ro6KbftwvORTI
	 OBvMsnUc9dZK0UyIWofBL8wTtMTIwSI8/ONo7YNRSHcOR2K7pEB60Ow8PG1GgqYLA1
	 o4nAYZolEFwgkeFuw5Ftmm8eS77YYGI2IMpO/Zc8NBKffUC6J4bhZOpdwg/+XrMIuI
	 rhfzxS+U1kYQN9dm1Pdq9G3nQYMd+QdJTC+nU31OrHA3p6hryif0HBQpFK+GR7+W2l
	 4x9DC8YiiH7tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D20D2C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 13:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168070242585.28944.12594772944841422333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a287180048bb7080bc614ff46b5d76ab2714637bb96b658d0e1a873a52b92418
Date: Wed, 05 Apr 2023 13:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680702425

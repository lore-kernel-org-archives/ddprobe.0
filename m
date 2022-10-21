Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23276130
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79606C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666383653;
	bh=jhrS4lcdbZGbJISLEsiGAitHDPacC/enGphOgteTLlo=;
	h=To:Subject:From:Date:From;
	b=N+Kea8ywEevfyP20wedpAZ+yWeU7dXsruluN2F1wDXkNGxMD52c/0suO2kHC/9bfQ
	 hCG/Fwo8Oo5ZkcCowKweZJpE74Tp9Yl/KYwnI15LZHu30Ljo507sMg3t39SDVtmFjp
	 bIqn27JgMiYNJVnAK8YBrpo17dsvVwsrMPK7ZF+OjV7+Vbq/XaFXVd4/Q6bLn/aVII
	 DbJ9Sr8h/2ccWMk7g32bUPzQOEZGk9ok8dzZFf+B6qeyWJjf84tx7MM4pd33C8KZEA
	 xiPXdhTmeAIH858LvpJMVaK2oFz9zZaAWqBwRR8mRi3VAiRn2xRU0yFcLmzds/WIZV
	 1TWonEnh3PXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F61C38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638365334.16496.2793380308122971365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3209347b388ccd32fe6a6192e13f6aec4ac6ac532a7ff377674906d15a0f2496
Date: Fri, 21 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666383653

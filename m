Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A370256C8D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780817074; cv=none; b=Pxc58XxhR5i/6U08fT21BKHjHcHuQWJh1zwYZR4xpNB9Icj7wVb8PM3cdkRi9GB6rWeZkhU91M7SAsA1Aw6NljPN3mp/uoaXcJfOJl5rQyb0pRf+TdkPK3rH0uyR7gf5htlm3JwA7l3LMTOmGEqmxRafmXluFBcPAXNjid8DJNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780817074; c=relaxed/simple;
	bh=hmce3gu6sQLyOhpYlVFoxVRaiGSk4I6fPK+AnH0CBcQ=;
	h=To:Subject:From:Message-Id:Date; b=vCj5fb00eZVY7pM0jFy4d4gUBA7aDPOUHhuQu9bAeACW5boYJDA+5lr3+RZxR5SeN28L8q9SDu9IA9dNDBgM1hVU2ma9HOTCFWqaL/TNfOZ4itJv6mAWlCL1j3j6iizuL2b3B1Ww1JXbPJ/Ud+vvZUb0os2Qlc618bKuWhAlfdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2GW0X8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2GW0X8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39BCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780817073;
	bh=hmce3gu6sQLyOhpYlVFoxVRaiGSk4I6fPK+AnH0CBcQ=;
	h=To:Subject:From:Date:From;
	b=d2GW0X8lIYQtGANQEtuDqtuF0TjWFSziK7SUN7JhvR2m4PElCUwhYmIMQo1awsGLX
	 1mV6jlapkJ9C6hyQyPzjnkV1rfTubfp2UjnuMTfFiyWjRYyzfY9ccADZHyLuKDEZh0
	 zqKmwMC6wm9badKC3x/LhKeeGJzPS1iminKCFRWMD8f7TmmtoVZt/Odl+gMrTZAqgi
	 w1T/gPeXBn9KdycHNYG13XlD3QbC+Yr5PROBLIn7wUHuq73Ne2/pDpqeI0pZqTmrmU
	 iTE7AO2NNhcxaZ26ZGrsXWCHphzlSCpFtM+JyV2um5kXvJRxjIHIHnhpBimVsEbByN
	 vRwOc1VjL+yfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9620CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081707368.852.11056198885096948519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe3b051347585c7cb9f389d6a7ed7528ed725a2aa97dff2513aeff3355266cd
Date: Sun, 07 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780817073

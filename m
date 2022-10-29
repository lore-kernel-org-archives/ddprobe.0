Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D353633EE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BCEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667083254;
	bh=bBCpwdBplTELHYr/8eBw4jGYzPuKZhF2ARbCPNOjxwc=;
	h=To:Subject:From:Date:From;
	b=lwdlMzeiW8c20uNhCq2MzUm4BhAnvUOhXlbuxmC4t+EjXdRfqi/EUAbxSfOT66dZD
	 NhpxbG8bb20NKgfSIwouD/RBPWSzHTLR6+FociT8seJs09Keqbg9rsfj4EmKcsWLyr
	 1FujMpTJuPXmGNUAtPCuZOl1vUUfX2+hKfNG0+YBJ9Z/rUD3fyV6MM2Y+04mELtjP1
	 k8fp9g4tuocnF8iv9mvYPFvq/mncy81/12eSCrAI+Vz7tesQk0kFXzfs8aH9ExqjGV
	 KcIvI36Bn+mA56VlQ1ZBSgfzbpn8UDGlKvZyUx34u7U927QbOlCkcGmT23Ftt2sV+c
	 wb2eitbdOu8dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC20C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166708325434.31807.2829497758899252619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64c36ffc363602026ffa27227c3130d47c520407d46da7c0c0f7b8d2dbb0103
Date: Sat, 29 Oct 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667083254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AFDEA8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3820EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686523986;
	bh=n7Osq65qUiUOmeBdvpu528zFmayz1v264wmCqVOZG9Q=;
	h=To:Subject:From:Date:From;
	b=agMY7vVvs5vbxuUwVlXX3TCJmCg/Y9SBsNsu1NDd0hjvhfrOWMYRGQyzEfSyNEU8y
	 NyFqEvfk1GAwfg0tfusXwsflS/Y0UAytVcPz1wFgq1cbfkcm3QhEeP01UsBa2bt3fN
	 1sm3cylwOwkJZTjJ0VLceXT/J/n7OiEmGEJedyFhWGMvs1zaeJc73ymzmdhuvuKW8N
	 g3VZHNjQTxsuuVMmf7mrTgb3MfbCoMOgS6z3wTnmrGW6uefz/VLA0xHWnxxJ304bCq
	 R0Dpara4IdNFsXx6KnqIcb4KX0gBCtx46b2CMQrqSfiGvSgGUPud4+IC+lUBEZxf2H
	 Coe80Lnn31a/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F722C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:53:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168652398595.9393.14836712535899123092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b49dd9fc688f8e61729e8d948efd4a909a1f42b819ce822123f5498c1c6ebc1
Date: Sun, 11 Jun 2023 22:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686523985

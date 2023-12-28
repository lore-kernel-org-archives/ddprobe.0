Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B7C1096C
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTRrCGUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8C4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703804896;
	bh=4pP6YK0u/swT/WXMHY7EmWVgPb7dIZFV+DdRGfwENSY=;
	h=To:Subject:From:Date:From;
	b=JTRrCGUbwQ9IOGeumE7jeqmv2LnxPoFgAJlmqP93pMPIBuMc9e27P5aU0m0x0TnOa
	 iyasfuhTCsVNDF84/QTFSOv38NepoAINEStulB4C90Jz7RzwTWf7SEXPb7Z+c/lZHJ
	 r1RziJLhGumtRePON6iwzr+j47ntFFjnOnhrRdV3o6NmgyrwFtdDNPlS4GgnJFb2j4
	 StfWLXvAXN9j08iZRwARVF4Rds+znffVutkPfjX1bU+K12IX88TE4wqUnStDnctcuZ
	 Nz2MOnwfXWoNyyNWnAMSrV55c0Mt0qdXciv4ISqV/68ELGy8YEVJY0B3HxkfJcO0Z1
	 IcQbE57Ber4Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F304C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170380489638.25755.4123511528314667416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d112f992439b54974be771b5647d718c778b6258f7c2bb3c50d43a7216370210
Date: Thu, 28 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703804896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97416D24
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85438C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671472887;
	bh=v0ORmNFAP8PvqccH/7ylFTKzRVHyVionCl1Py/FrQPQ=;
	h=To:Subject:From:Date:From;
	b=BdfCY/RJyvFNFZk18rLoBCEMXe78y0nurLgIiP6f0x1o+rtWInD4cypauEJrzuSYn
	 f2j+yn6oYq5D5jrMt3iXw09Ba0oWUFio3gVKCrjcogELfZUGvyJ2E14AcNRa6misg6
	 ntvFFw7HOwsdkpykQN9JaAW9nQsv1thOfl4j+GpqAadI/dx71E//vE9FskjcaQlXI5
	 MAMXNEUN5UCfcXgJnPS+Lt4UfV+6VFxDEJzp7E7/H4zyxXtUdyMPhv+IT097hYuPyx
	 zXsl113eEzAmd1NP3Yw7YDRTi0SxrZb3s7qHyfl68hHZ8xOO82XtSnz0UjcXE1SBrU
	 31FupYhRGtaHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABAEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167147288742.13987.728104803908324207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293b96bad15ad765b879df707dbfe33917906dd0055db5d0ed6f1fb3d93d39b1
Date: Mon, 19 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671472887

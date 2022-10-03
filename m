Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33FF28E1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B840C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664826053;
	bh=Mg4rbiRz2KaVCeCzBTcX4C6ySXUpt+kvJY2M7Up/Kw8=;
	h=To:Subject:From:Date:From;
	b=swJcqL2DPOqyFlahADPhhOC4YWdoqaC0Hshs0/KxWBR37ixEccJ2z6TKMdA0aHHfi
	 F0otDjjbtxPqfTBGk4W19tJKZStz5WdatDublPvBKndJPIfbXT2uCR5bKse8kJaytL
	 ulOZEn3FMRm25gcotHHPPVTQcS5T8iyNprzBccKffx1qbZgiG1f8XiokWdrUpsUssg
	 FYj62xMOC4Jt8SDxtltN2E4foMbnrqZN32MDIpnkx4WmqGXbLk1nhrn1l8k/wru1+R
	 A74kktT2TbbiZIhVOjM4jCsRfc5rzAWvxxQPzcRfNY4TQlPLH/n4gsLZ/+uxhHkDrt
	 x3n+COm4s6kPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550EAC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482605333.32083.4094270371465279030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f6b2d355f82b81ac2aa7bfcd083dc8edb1145b76245ba83c377af1c35be2c7
Date: Mon, 03 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664826053

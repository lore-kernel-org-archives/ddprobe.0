Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1570804
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71323C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661947853;
	bh=B2WMUt2SWJXVOOKaXzJbOYOF2oELmGjTMJPW4eJ2y7g=;
	h=To:Subject:From:Date:From;
	b=Il3aDrw2LyyDzqZ5ex8MMx9fmWn5mZCnVb7A5F1qidX4ck1VsV5YzADmD1+qwwmVU
	 /QQylGJ13UBTOT9Mq5Fkc0T84D3ybDfyKNb46VzfA+sM9APnlUFZM9iNuCi88coiR/
	 0nXLkjiVe/Mylk6RLnmaeV6oxMSZ05+yOnu3rWkZIFIww3OQZka53askkuBoW3WKNP
	 WO5Jrt6OAfXvnFERdoId/DWQZ6gEpz3rbNj68Mf6LaxAdk6neaHGom1vQLK8YoejL+
	 1LR7ORzuywrQTQ1UGgIZmsl6x45tVuWnW+SPLjvD9boNEB+0nsWXXLkmBSb9nEg22F
	 nd5gtWbyGp8Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A911ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194785336.29011.7637646027825105345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f19be0938666e7754057dd9fd8e1f8aab870e677cc84a8e28e4d088d208dbd0
Date: Wed, 31 Aug 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661947853

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6208B134BD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC3FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690551728;
	bh=GxESvUlKfPlIuMU0qOMf9vDrikRQtX3flxoMLfajJFI=;
	h=To:Subject:From:Date:From;
	b=pjFajAqTQ+ysWOknVfXPVVNH9xkP287YdKpAiNoJ49xyDRbiC1duzJnMyYdlpgjBW
	 FrQSQ8ibUxU3d+pPccykQKU8SdPhnzsQCLIBAp+h8a36tFDLKB7f1m4ho0/UIzSqEx
	 VrcvT/YLvO1hVsOdDb7aDRSfjp7t9H88sg9752Ny4XTPtY8miZ4eNKcIy/Syi3Y4Fm
	 tfFP/2ngBBfLZBrmguQvxpRZTe4cbbfG3eGXrcnl3zwkJtPK+779tsgPob0ettdb0p
	 /WhopQOzJSy/0RoVG4D2658P2nHoJR3EP8xcAOt0HJqlw/3A/w4QkhfhZcEFIUhBha
	 R9DhLmyGs6TlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C36C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055172868.12780.17786157486857159165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559e340beac4dfceae6cb35afa19199a5d292956b88bfba92cfb3a3849bfb6c5
Date: Fri, 28 Jul 2023 13:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690551728

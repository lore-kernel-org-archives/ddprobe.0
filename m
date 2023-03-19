Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524CE10EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC79BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679217306;
	bh=inpObqM5ZnW2jyiCa7Zu3aMkM011tgFz7a2heMzn2No=;
	h=To:Subject:From:Date:From;
	b=t+dSbVx5RHEwaBvcmjDpvcyQJOEQQnbFtcjYs9vKHjtzCqJuIAKOmLqVTW3758jAX
	 I9ScU/tvkmN/9E4BzVmy7fbqEGOCxbCMWLopJU1in17cDfdIN/J5B7LrhMKIMggj0e
	 BXxHCAHl2BYtdUna/55cywOkhqjl042LAC0j9qA8nGCzhDyVu1y1JPU6OttpCOh52V
	 qNMQVoH0tVE7KrvAA1PYFCPe0092XsZnZ9SLlLntQ8ugDUtZlRBQicAcKnNivIFxQL
	 txbq6Wy9/9wuzGtcm/H1gaNZ2nxrkG0m9gJOYrCX+5ssIV1tSUqQDsDKo0rISu9DD/
	 DNEwHOmj1hL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBABC7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167921730583.2132.2913082449794437129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e07af5e77c0d65138e12ccf4222f521cfe7d7482f78b45ca31ae3c5b718e3a8
Date: Sun, 19 Mar 2023 09:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679217305

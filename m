Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B148F62
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAY2I97j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D9EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702556296;
	bh=NO4T+BewMazFM6SaJUZH5L4ys15gplEtBJzYDAvvY/A=;
	h=To:Subject:From:Date:From;
	b=YAY2I97j6S2mthOjEPRvN8HTtrmSQ56KsHbRR+r1a0BZZ/KhfakQwgnAR7q8Yb6bT
	 iRpQVsfeb9+qe5IGFJev+ccLrJtGyKg5GhTYDWfoUznJE2ruefasyDmIdzjdWLPb5m
	 YvwaqiLwg9Nu6LPHfsakc/JkYn6esWEXDqX/8aoBf0CshGV7y/jLBo9uQYRByHx6c6
	 MeFogl62Y2+bCqHEntdwUvO0ExylqjOBJ7JhQuyLwi8ZXpnlokGwGQnrqckfiO35mS
	 C1+bjq/Aha6XTG8xKhYDM9eisihbi38ysaYs/RB4KU9dZiAxxyoBswypKewMILtIz2
	 icgLk2PV3p7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFDCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170255629636.3507.4794691826372470235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8feeb5984df1c46b5a60ea3f382995eff4698b91e9e13804e6c891bde5b405b
Date: Thu, 14 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702556296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DCB7F
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA330C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675643765;
	bh=+CSOu9aXsVBe6B1UDNskEOeBpcgD8jHGqxBgTszYX2o=;
	h=To:Subject:From:Date:From;
	b=GLeAwABbw4cpkgo42gF/eauW0WiKONkbT67BxAlpJUQDJvz21DEEUSvYatTNQ+Wqk
	 piZBZ8wBYHhAdW1WsH6USmensRqhA1XKdwxFT8IS83Vewx+vH/4fXDLYpS6xpmUECW
	 f+zX2hKLUSTyilDv6YDpMu34jWdx3yg8DIAH4fUVb6u411hLo4gouTTyhFnwjtz2Bw
	 B9EH54g6k3TQLF46HTOnDeB4XQl4iFcGVjnuQAXY/4NVRAAj1HPXFBRUYUzakA1OuF
	 RIaZC/u+jkFemFnOIZzaUqdnZI4c/1jfe5TbXz4NAYNEVokK7HYuqqQ/UypuAyeoTC
	 4g59HK2lVl4ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF85FC636CC
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167564376573.22391.11939133977114697143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc551b2357416d54c416d9076d8d294f514a2cce53ced84f9824adee5473cc0
Date: Mon, 06 Feb 2023 00:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675643765

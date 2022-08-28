Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63647C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C624C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661659252;
	bh=elmHjifAm9ZzrVhMJKVygOqAlBBQF0uaUHCALFsW+GY=;
	h=To:Subject:From:Date:From;
	b=QlMHp/v9YREUqE7JxzceY6mXMcjc9EF+bPtxo3IYbHh1UifO6Jzvjeci5SwV5MUH/
	 67wadl1UFIqaADIOl1bEqFxW67k99MVFYLgFkHKK2I4pvqad3A2jix7+hGaajsTmlw
	 QOpPPlqLAghannXrhnixj4l9pIEgGEjz1qKbqC+Ay3mPnqiQAWovdih2/W19pX0Y+N
	 XNkvw5aoxAQHQcKzB72MVi650S1EH4DMug5oxY/44v64UDlftDEgxEYdp6h+KbDJ0u
	 NHbzmeuF433QYMSfl1aD5cv0rzdM5cX++cLENaVupP5hbZi+XbgjXZ/6GmBj2aL3o+
	 +HyUuHcBn832A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56047ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165925234.3954.11192832416776652173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98127387b1b57556a6f1a7219e5e078fec6260f73b5df90688cc788d6f1d0cb1
Date: Sun, 28 Aug 2022 04:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661659252

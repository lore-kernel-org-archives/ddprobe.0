Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFFF19B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BF3C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672655487;
	bh=xcn6m64kXarqMg7Uap0B3VA6VhMKOvWlDSLIhhQs04o=;
	h=To:Subject:From:Date:From;
	b=aY1nfCO9ZAuN13gdLvfNLYRFsEhIUqfnb85ApqaUkNQPnax1RhvMCbzPJVwUk+x3Z
	 xHNZNQLdAZmQKAG9Hq1gP9jMCtzWg3h6JR1EcMxtcPC9Nw/t3BWmcnl/Xp+NYbVqFG
	 vMEqbTaL6dwhRStypcCJ5DFSAtGpg7S+iaidUhtLf1cAxIc+JXJoeNIeMN5Xes2fF9
	 Cz6h2Dlx5pk2oKE/xfqpHT5JXa4FvO9CwZVWNNMgtMYR3p18eCoOOcwIqf0oMcz6qb
	 x4qUfSy8+tHmv3Imr5BJ0kvgPgXbJ85oab/JFhdVjphgYGQls4e8faDnPbYgAsWReR
	 jtsCHfeJyilqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F284C46467
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265548744.26856.4363427099669645540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e89a469b7eb269d5bd19b42b72bc29b9b86216814b2ed5a170a3354593fef6
Date: Mon, 02 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672655487

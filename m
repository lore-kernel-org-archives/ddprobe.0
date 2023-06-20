Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718DBFC15
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF30C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687272129;
	bh=msZwFXFyl5OPnJu0PIhoHYlu3ySKf8c5zGYuOwkeboM=;
	h=To:Subject:From:Date:From;
	b=NxKTvG+dsrd8EalEXbuKmuMH4kJM+6kHXwzzrZGGCj7sQJbOENQU4XUeMh6Qm5lQQ
	 Nhhpchhc0n0EpOda6aNApnK5YP4FRH3Fvb7V9tg0xmlpZd1IViY9JPyyyXVuJgBNpR
	 f6XmRWSKndqGJc22OTSw+eLhGv38BKRy2wHZA9xAPTycTeCTksl4N7p8xWAVc99GoH
	 CPM4ii4oN1vcBq58H8v4QlSbW99DJGGICgUfnZ43eu8Wa/18ddzRbvKC8IbdTLZTIx
	 3D7DqcMaCWzKkGMJ8eAbEE2dmijkvzJG2f8SE9PcqfARN0hgmVVH3VldalLacrljRm
	 u66X5VOWQyLIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8ED3EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727212880.3879.4203338339066168761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cc6907c43201b80978964b6f4c427b0fe68f6eafa56f0e211c1aaf088b8a9e
Date: Tue, 20 Jun 2023 14:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687272128

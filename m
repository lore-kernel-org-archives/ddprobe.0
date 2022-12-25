Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213147B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9714C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672008687;
	bh=cjlCPoQ2M3qehjOTVw4KMBm3SGydQjT2y1DbqrfL6Sg=;
	h=To:Subject:From:Date:From;
	b=t8YiOd6Bo5Vm/GFL+5s+ArdFyizbAIc4PDjnR8MxOQGH6qGJArtV47fRC2aKf4qMS
	 eql5XkFu10TbY86RX/rut4PQ9pbuy49qoRMd5EEL46swpUXTbw+DavJCCaU2kI4fHc
	 bgWvMXVSXPPpud67FhCybvPKGzLAdUJJ+NnYxTxfsX8ieO/dGJQ+NDP3+hUkcd2zjA
	 G5R54qj40kfpoq1SYANcapeTrIiRjLd50ylinNCZHKfb6epWYTzxnCeURGWUtqIxv2
	 8lEHp2PqmB49ZHO8r50MHxdJGloC+M2FLWOPm4MM/7azYrDSQLDu+cFI5pa9GHys+m
	 fztBwcuJK8Tgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BCAEC4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200868749.27756.13043215698573360861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abfd8d5f476ca242689af2efc34e25c7ec3be2abbd3c39929a6b25238a7bc46
Date: Sun, 25 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672008687

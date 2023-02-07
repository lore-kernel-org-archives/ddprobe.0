Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2791A17F7
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC321C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675749425;
	bh=QZHJp1UsCgppWER6XeSxFLLYXMoou4ihRA3ql7TbIOo=;
	h=To:Subject:From:Date:From;
	b=KvXMcB2P64hDRYojY/l1uzj86Az58tnheVcJJB1oLraEApZlib/nmRvHs68CpdBqh
	 iIB9Hqg04deAA0Xn9M+8Kv4nZwHhT5hEVHrHfYnXvzM4hlYNczrcNibxf2QgCSs/Rd
	 IGPzgXmwvBxRJrVo6y96O+jzrMh6Ad4clIvEjSM0iYNMuF1WBQkZmjbdWNhUw67Zy2
	 GcLoG2pkkUi3bSsPcSgqmRhlsY502xLjMlFyWvUbNIBugw5L1jYtz3T92tx2AVwznX
	 0DwvLZd6U4Edr5m0HhvfkIlqY8OQgz229XGnJVdWXG48g1roo20G1yjGtMaK4/3XFi
	 LMIOXNJJZ+VvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D8EC636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167574942572.22160.5079203101498159627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8827417aa9805b8d33636d9a1393d957684dac34f55a6c8270d5234706ab5f1b
Date: Tue, 07 Feb 2023 05:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675749425

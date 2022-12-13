Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D297A2F26
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC31C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670935287;
	bh=QcNntbox02bvluFyWTccbEG9hhpQ0ojudh2jkr2U1/M=;
	h=To:Subject:From:Date:From;
	b=hp65nmRRmjWFD3kuhVVXLaXIVE5SY4FF8u0ei9sYfdS1qcBzQ1LGhSBjBTDB33P3X
	 G+1e+VbfB6n4VkpGbMBBQyZkf9Y8pvxaCmQKJaFkgFtXnhiDWUYt3dp21wu3ErVuy7
	 zq0I7kgstQq1GAyUPX6+KIcONymYtGp8KFvNjkFYOEijX3ZjGFDnz1bJWyKMkYf5sC
	 Ua5SKdyHNX2LxH4Cnl74InmccFDJQ7J12S7d1IwS8JQpZYHXEWSkjtqVDnwDT1kVor
	 Mj8u8Kqf4RC7Az2d210R/cLDH/9CXp6gLkR0gcCseK5l4GwWDcgg4tz4uWyAJIjdST
	 0rKMYnQK4380A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F94C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093528739.15956.4657748125675377178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c81de351c2dabd6e6189c46ae4854ce8399e12397aa33ecf4968ed9c3e43a55
Date: Tue, 13 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670935287

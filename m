Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5525419BD5
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0270C433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690831928;
	bh=BVMXZ6GJHJDpJ7ZYPtfLT2RWbZ6Y07BsKb+5atfwspw=;
	h=To:Subject:From:Date:From;
	b=Cm4hV22U6QcUcpnIYDrImUrCguHbipF6uH+lfie4l7nKS+s6gpI/lWymnYSWkW+9+
	 Er4zKKOW3jOKiZqRWX+ODRRBHiyd4L1bNPiqCtM6u13xHCmPXM4j4GRjGDDyh5096L
	 dqLra0IJ4G0EStDfvHI0bBbFOWBbu4febcCSr4X1VkU5aXftJynBUq1yYNp7rz5mj/
	 wVILODfVjemHIaHgsuriRz3/1QlCGqqmgK08lvDc8zEgTIBp3qDQe+HpyQ0GXCkTay
	 wA1Lbeq6HiAY4rhO6QaKmnHKpppOr33CHI33NOo4JQVVNEfLf+8h1ghK29roRYCdgB
	 X4zITKCsMAAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E41C001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169083192870.5858.4196749607626062805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cadf7bc7fe14ba10de41c4374887479139de276f88f330b001b24e0a2e06561
Date: Mon, 31 Jul 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690831928

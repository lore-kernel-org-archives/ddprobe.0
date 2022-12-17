Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1B8657
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC43C43392
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671262887;
	bh=ssxCJ4+odjC2L3GjlljtJoP8Xe1mslVemeaQ4DGvoX4=;
	h=To:Subject:From:Date:From;
	b=CL0y/a1EyvE4N7bW/dVunFHXFwQqIpgzweXKFkrILD5XrcxGbHZUBebGLyd8qTKbl
	 iBGgO3QFANuo4IsIFyM8zyE3daIkGh4ShfvZp42nlC52SP0IqXSZ5DW11Srr3UAM4x
	 IkzqvRiwCQfvEXc9nGr8+YP/PsZu/+SJis7AL2Fz+3nkm5stgEZ3vPVfMCXga7+PXP
	 iJlbk22zPac6/Y2sfza3U6P+SPhaFAV+9lYLa3IhDXmMkJrVxPvSP6d1mustC9aT8k
	 dlUxYkgMISVA+yO4Or43xBTYKRm5kJRwjTgAgCJ+Oszgs1eg6qEwln94PrhUQBGmN0
	 5D2QKI33XNUMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B283C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126288755.30851.7658810347606052554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad70a55487fa6997a0c2488ad3ac61882de02fdf6bb8c98375cea4b3c29e00d
Date: Sat, 17 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671262887

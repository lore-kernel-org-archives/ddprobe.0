Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0EF807
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65B18C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669055454;
	bh=L6v6u1UO/MyNcIqc5pdAvetAM9E4xu7Tc6iAKbr6/oA=;
	h=To:Subject:From:Date:From;
	b=CQK+am2nCIhx1A7mji6RIGOXvyIQQMAx4Fjrn48AIdU0BLjZUY2xAEx8bRdyCJeVG
	 6ee6s0lDeeJFNI2DWSIqn0Q5u31FXqUEASTbhTiN8D4Z5XWHiwu1+EewH0jJ+x17Jb
	 wR5LkzLjdfbGBuPtlHt/eG0/9/KfKcjFPNqtJNKUi2u0xDpL6g4epIAYNjy4SMN8r+
	 SsR+M1wHQGqzHxXYFek96WCgwy+kTtJ2VPkTHj49b0V05KEAu1JiRM0GlPNDfOJGyK
	 BVqDP+M6TYY/Pah8goOfAwO+49Hyh4mbnpibUnt/mTP6c1VpBaJGKMytN/0gjBZbOZ
	 hOxR/L1+oIZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508C7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905545432.16484.13274581049874238088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b68e55e42122e4104a8f2f9e7730db92230b73b189b266ba0e55dd674e2610d
Date: Mon, 21 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669055454

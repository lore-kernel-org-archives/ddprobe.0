Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A68ED1
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2ED7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684057085;
	bh=28yxi/4NJmVPA6Ibe4ZbiQtBifTOOVZ1hy0kAwqANQA=;
	h=To:Subject:From:Date:From;
	b=mOrerhza66HoP112W2MMBtMApkeGJJie7iGmm+fhBw7qY5vkofSx+qVjgTBiTsgst
	 gM3gHmDk+yyvwT2B4+3m5PazjElDlYeaXbjtfUvyzmkVom8cYsb6j0xOv3kpWUVL0F
	 3Zmr3oFS37+qto4UsQMTZtZmOJPBq8KuXdo/KoqOAIOvrZFhPfyEQsVE7Y8AsMFry3
	 dDDiSWgkOOFhBhAOwEeR0cDU3MLJ5A2n58vOjUKdYu42yzZRPQY+/mARXXten1Qj+N
	 No2ty2sWZO3HWoN8hTHF3WAJA4a9iPrJ8mdqwca8ot15YLu8CnPQpGQoJzvJjBDp99
	 EFM/uL/S0lKcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40FAC7EE22
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168405708579.2614.8403894059239104992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333a18c000e6782c633e58ca8d47c01681fce294c5bc01225c23151c0053413c
Date: Sun, 14 May 2023 09:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684057085

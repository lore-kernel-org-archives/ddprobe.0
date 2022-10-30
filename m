Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C573917FD
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70116C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667117454;
	bh=Pv4P5l8n1nBPJT/nViGXVe+mjxOCyuXooR9spN/0HLs=;
	h=To:Subject:From:Date:From;
	b=OtgDL3q+dmDkcSL5VFl+4e6ONmy9v1MJQQ0nfVpSb3Kr0u4+uzydYqkOAH4NACj78
	 SFdYI/5+VJUzlHDIiQ0xnExHaDBM3PmBy5X2Bv+9Ssv6H/u1IdAhbmZHep77lo20we
	 ysiU9BZYfAh5B4TzvQl6we48jXfFmILkv0BSh4d+hATHwGIn3I8BNB91dpvQ5XWv/G
	 Ezc5+9u0vCf+mcC4wYcaJOHQx4F0rTHB4FOnyVeYbfegEUVCrqHoP7MogyHAt4vtVK
	 bawb5LW4OTcWQ8TU0AfZ5L6F9Gqe/KEhRNTrrEl6qOGpikB6x1q52DfJrPEyJJhfPx
	 +HqYtWfMcR4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A95FA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711745433.19326.7941680385453631292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098a17df55c3655010f2e52c99a634392888f6d681a8bf547f18fd9a147d6087
Date: Sun, 30 Oct 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667117454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E08EC8D4
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 23:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7129C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693612448;
	bh=Z+nTR6OwPfvsk3gjpY6LYvTzzVoTv2r9RpWK0xGxNI8=;
	h=To:Subject:From:Date:From;
	b=c2E2ygraDVLU+8KHt1BaPv0IDoegf6iz+ZFocSq7/WmbpB8CoAQdlRvGPrVnAH5JR
	 +xZFSc9NReJ29m77h+5vfaQqb8AkgTNwgjag0T1Z0oanPc91ND0b5n2Owrtzwa6Vx4
	 kQ70cF6yBkcmRz7vuaVL/QoG5GyB0wyvoJ6ZL0qxTQTteXdI+PFWdZEkYFbiCNn6eR
	 NS2Atwo09yQdmyke0XuSbxtQ8Sx03F59wVHIfUuU3pNje3tMVOnoR0pI9oipTXePIA
	 13G2LsC1xX8EpXm/awDaVkPb/a+k6UXmZ8+r3AqtJqqwfAr4jxrjGB3B4MG0LVZqyu
	 8tM7H7Db6x5/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB119CA0FF8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 23:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169361244867.28618.14784674009341854063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0bc741b255180c0ab48fe881b0fd22294cc517092dc8eb7a39fd3f70ff6a8a
Date: Fri, 01 Sep 2023 23:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693612448

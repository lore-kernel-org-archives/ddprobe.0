Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D771079A
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 23:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC12CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 23:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695858968;
	bh=FMClN6vTQgPu+d38BACQstWjt2/C/hyZ0G2k3M6ctJs=;
	h=To:Subject:From:Date:From;
	b=lomq/BKXyKQCEE7Iegm5eY5IXnxLtaLpmS22SIYFAtPSwuRvydYXOPQesoOoCsfA1
	 iabs2iAKLc+YNjRzmAWA+1lzxxc2krX1jMAEXYDdJbnAjlX1S3wC2oIo3gNchi/+JX
	 YRRW/0o9GnaBr7bnD/qbAhkaNVf2ObkaBA77QWviRus+RgOfQsQKdiY370P9YbXJeX
	 FRXbfZd60J5jEBMcibzRrcryQ/c7lmzPMzEX/eLoCwvxOAdpgA61RwZXzj2JjGN897
	 QNJtQDFoOTuGAOQG+UoQ/Rt66LbmYUbqwbVQk8KRtqI124CfljWfND/ac2iZyMAejO
	 Llkc+T+2PKqhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE31E7F14F
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 23:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169585896870.1515.8931839556594917932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3ad1578249c5cf61e8ce5a7568fbd239f69e6bd7bbd65c680f01ac5fb81167
Date: Wed, 27 Sep 2023 23:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695858968

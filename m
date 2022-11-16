Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F5615B2
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB60C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668587454;
	bh=EOMKx55mfE0Icp6GqrRnkN7iTIYNnYKMFCOrB8zB094=;
	h=To:Subject:From:Date:From;
	b=GjoDnTs6hpbLGQDuZbPPk8GgdMV5KVzzqeAUNQ/6ljkqWSvCBR8qVLVufBO0Tx/09
	 Iu50yvbPjjTMb7e6WY2kDGGonYoYvKD/YAz8gi6Le75AzHGE9aX4JsDUuyNDpzTSEm
	 v+WjZIbKEGgtocd7i7SB7CGj8HZhAQKQq6Sz59e/nYUIxiM3d+Nl4rHFO+DjoqSFkI
	 ur+r7ds28/7iebZ7dAUm1KbVXNPq1yatoQ+yu838AliH+aoTk75I9tqMo+BPZ7ltnV
	 1lG8hpGVvdbmm3Jcma9CPQS/61vECTLzAHv4FOJmTbFxapuAdotG4INSpY0SLy2AC8
	 NQOt0WMvHhEYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5259DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858745432.19057.565302574467062958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b50f0a636bba715f1983971f79a6d7ae71b4e35a29bfd57fd5f470d171d9e1
Date: Wed, 16 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668587454

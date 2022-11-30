Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC979EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2ACC433D7
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669807854;
	bh=QgZLaiLoMKhawKeAnjcyvWN9+AaZ6b3cwGvwPz4aWdM=;
	h=To:Subject:From:Date:From;
	b=p8Lsap9eQGKh0bzOhEASJ6RH2ZpNI8/vgvVpbp5iyozygnPz5kyfs0lJTfXm8pZGc
	 Davcvo5lRuQn/Qk1X9LcZO5LTgQliOFLGAINeMASaBXe8yPsh8UDKy7BWrSfC0rG+P
	 icle+XWUPUhHvNqphV+xg3JJ0ylM+5W++EazAupOJr6B9gr8ysAZ6jAGogvoiqK+WH
	 y1GlixQlYt0VepeuEq41PBSqBw5ObDHKQU8JdD3OC00zIGxhFq4c98qaITXXJIAdrJ
	 GtKyuMx2ZcZ4BYcb8C5aihct4Gw+f3dgB2w+Ykl1C09uxjRCsRfw6rPiVpc1weKltx
	 w7TpyfjWJBcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54255C352A1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980785433.8656.1850908185534270199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0e49632698798962c840570c37ea11d60b8ad2e0d9aaa661aa28c8687be86e
Date: Wed, 30 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669807854

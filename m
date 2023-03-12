Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B63257D
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8E5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678631825;
	bh=A8Df0KKb/4yxxOZtYJ+c4e1NKcYbNqxfGLKQ1FPywhI=;
	h=To:Subject:From:Date:From;
	b=bq6j4sfepLZigcgnRc1yugFZ5s+2P7TLvSZ+9IUNy/UGHyfi/CK6Kp3opHoIYIPpX
	 aYd1Yr4A52kqJCxV2aYRImWqyPUDmkFe4abg2N7FvlEBbgOa2dGDtdjR1B30LhDE+t
	 Sj9dDOSs0ktO6X4MH4qNif3Vu3BosRudWsIt4ZdAXt3P9B0D5iVlZFMqJ4fSc3KLNQ
	 QvUh3eaP/rw1bKkKaXxWbU4huVnEFdQbLd+hLiDUCjCJVr1lwids8NQkzD9TcuIOO6
	 q8gic9+uAkHEAZ4puO9gMuMhPFSg96hiyBhzgnPXjZGadDjqyMzrYp91LgDfX+0HIz
	 NY4d0/DI5pd8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B274AC6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167863182572.6511.17477509025437861970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32aba6648950c24ddafaf3545c766575234d0d7678377c5b3fe45620a85e85d5
Date: Sun, 12 Mar 2023 14:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678631825

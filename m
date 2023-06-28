Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2FCA923
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF040C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687946588;
	bh=N/yYhiW5G9hdjknSkUxuWNiU8ACmQ+YZTgElXmXVJ4E=;
	h=To:Subject:From:Date:From;
	b=iFwkDGaqVC0IJUIFo7DDaCb3Ph8SBV3XcZ1G1IsTzo0uDvmzIgmZ0Uhgi+8bmsoT1
	 MtZzYVmgcxG1rOqqMgRivYMcXQZ2O2df5paBqFlss4e7UWAPwKW8RlF+TEDv3wYz5y
	 VMlz5fCrruDnmKALON/HIeNf6qw3NLKp+mT2aRqECR7hm/SIpoYKMkQr0fYu+VeM0M
	 W9A/hruGHbpe7fj4WcKR8Ay9Dm/wPZh7oGvAw37zN3civ0yFraeV/+WUzzJspYZHxL
	 KD96rw43UJ7uhlLWYIvbxEC/0+szSaLqpD3rmrkX8s0FJJgc4WQq9vT9Z+rZ7czF+U
	 F8V+AP1HK+p5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD5AEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 10:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794658870.12205.3821495492018902182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5413b16da703b55dc3384a958f70e91f28bfd3ac1646d4d237f6d1615a6054c
Date: Wed, 28 Jun 2023 10:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687946588

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EF029B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0AEC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667983854;
	bh=pddk+U4Xq40DGkfqwKqQ3fwxLeJJENEg6zqQ8kDWzLk=;
	h=To:Subject:From:Date:From;
	b=BFuhIqbwPzX8TQ/+TWvbEjWhmjBJivwl/yBnqUqAIiZcsTb/ZOwkC9YToxmL1N1ke
	 3Ax9A5V7eT/qBLztip3j7TorjxVKfP9mhcZ1UtAjmOQRw2CqZoFk/OByfk4ZgIi040
	 xYdbKUD0TFVQ5wjRuFRdn9K+fdf16lNelhnVrVrOT/xh1SkBvo9jkx1Gb4N3kCvQj/
	 qxM3e9EAEdP/k0I3QxyZldhAyW6DxK3bnd5fmMPEqnEfmqc5BEsMQYtlhdOzYVkUCR
	 yqRtkRQkVnAOO2dU4RXd5VxFKrwThJRhtuYTCDAyshFC/I2TKcpPgyzXkVXexz93vI
	 Sfce3VOIw5vSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE94C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798385437.17687.17232801775808424399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37d9f2d80d41df2c9214c635727a53959705df51f0acb0924049f7f96091167
Date: Wed, 09 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667983854

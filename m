Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DE6847C
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 19:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8DDC433B0
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 19:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676055845;
	bh=h48HGHKbfOZdC0L/5/vwyD2Co3t0A2kh0jii+Ls1v7g=;
	h=To:Subject:From:Date:From;
	b=KkjR1wiwRbX0BvSyMT5MAD9G7n1N+fkihVgi0VdEkt2l3kuM+AxQ9BkxtmGd/ylMC
	 5IGLrMqDUZGd8aeilifzPOrb0WkllpKqxViZqw7xcu+lm38DqGUdRmTiFIM8x2eGyk
	 Jz9tb576xjz13PLMKLI8By4sVMoEn6/xueUyqtixzrVkGI8HLdk8EdMNxQS1QLMxA+
	 HWIkMmpj/jJpHUh/GW6LSa/ZEa44uZVvO5ZwbNNGiTbkzdeLMVM2/BDVlkEAzthGgJ
	 GhDQdPhkn9S+MCF0bWfWJ+7hN2H2cijpysTtoEEoVYjzZk9NUxaQv557nM0pOdll+d
	 acFQs6yffGsLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF607C636D7
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 19:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167605584577.2324.15037499949433439739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2346d5ee3e645d5a45c8dba055c95a88d8441492a0854f46d0658741de87eb
Date: Fri, 10 Feb 2023 19:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676055845

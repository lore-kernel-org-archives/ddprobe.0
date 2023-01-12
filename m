Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132586AB6
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C41C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673528487;
	bh=D6McRAxvyB+Ux4EdPrr9Eq5QLbQR9sXA7E1ivctjbfM=;
	h=To:Subject:From:Date:From;
	b=ayIfqdFcm4ub9dzbsvXfgZ0YHuPiELPM63x3Qzstc9CM5sShAUYfkEDGO5S5qB5Zj
	 mFIoyVzawQTjl6QbBY04/prpQ5RIqF0sEgRcUVWtVUQsIVyX/4eRsnPU2dQNvS7hml
	 n9CuvWlrMqqWjABdRKQVct7FAzfw9uDwRcrS1ATRNPCFjt20ZfxE84z4ovYmlGVU8K
	 wblIsqfrROeZlSSfny+9x4rHDLPkDLQdeYmMW4+FquAoAevP15xRfDLOxcA/B43Lec
	 qoKDYv8G9CFSbSNKtfJM//ukH5J0WXaKWYoTX4hwfJUVoawB/iMxxY5uLSnrGhE+Et
	 K0lmIoyxp57qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74722C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167352848746.4504.11629010488490843400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07103198c52ff4af7bd757e95b912aee2b873c8eb4919777382434b9a3b54836
Date: Thu, 12 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673528487

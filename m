Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCCB111A1
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 16:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6088C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 16:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684339445;
	bh=qHETKcbyqosQz4m5fpnJ9esqp1GKUo6NvJKuiX5DhzI=;
	h=To:Subject:From:Date:From;
	b=eRz1e12Hw97fNuU/1ThLXFBkOeDz+DkNlW3l5dUsbdA3UQU19lc5Td2x3NLoQRDcF
	 nc0gSN8+TcYO6sqzcwVIs1pzQ4qXCywTgNJVOVTRZXaf5N+NCOp/KElqBh/CwrTVZs
	 anyPuYOR2oLOpdezID0aboY3iOlSenT/XIWb1n/8idOMIC9Yo3dtFYLtSfY8O6o4fw
	 fpszXO4A3BNa2dc27Sn3espEAhvbMrYyRJS13D1+1Bvaz88LJQlqGJF9VN1NgDhBC9
	 dy+wdD+aQA6Iv8xRUkay2YJh86pheP9U2laTqhmCEFbtEJyodd+qxZ9d/a0cpq9R7k
	 xvddTzULD10tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1BEC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 16:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168433944576.14772.11234825558945738890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92d4a04a52c2ed703ffae1ee4e446769323f58e73ed9c7e3f773cb63d2b02b7
Date: Wed, 17 May 2023 16:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684339445

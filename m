Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC700320D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E414C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663066853;
	bh=9xgsA40OKS1fDFhavpeCemVGTabIrIfygsxdEW5e39k=;
	h=To:Subject:From:Date:From;
	b=eA37iybhRG1LltA+6csABLbx3CeZMgh4V3j1XK/woUOwA2ZwAC8+68WFXZokZTWbB
	 MrBXVhSJGJs3nV5ISuhC/GhBjioZtjp5QkzZ0Y7lUQ41QQfsDGVjl1/ZzLyodpElVk
	 ErhDPGYsaiiw+cvJs4zMLqCV6zq/CMMvMxmtC9mulHGwYdNQJ6mlB2vK+wbyyA9n1K
	 LgY4mq+QkuBfvEUsrC0L5nLRCvPp+PlfjL5v9ROlxbV83cbHrBR37l7/osf0ckn5S7
	 Dr/z6K1FIvaLUkG8aWk0WPN1THIAjHTKSXZxsXBccl61QZvR9CDWMxE6XWG3h2U44Y
	 W8a5cqL3yatrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C56C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306685335.13731.11435023941260471684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5926937e8050ca4d336f68f96da838058ffe93bc2c78154cbd1ad0fcf8c22793
Date: Tue, 13 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663066853

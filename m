Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93D0181
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B831C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666442453;
	bh=8iGj0pPHwuQGxRfCkwnYoSXoAHipnlPUQnTnl72O/2o=;
	h=To:Subject:From:Date:From;
	b=GQdilPx+7WAAwWA1zawRCMasiGYkJ/HsvXbKioX2Ul4BMxaPWImEuctQJPye/GRJ+
	 JL9yEw7mQb6cBzGfGSmOPZI/AB4zBA6B11rAyecC875vXkxJYpm97n+zloBOa4acOE
	 bpZTye3kfOljb0ymmJZpv6yUOy+eY6FOh8MqaGVaNSaE6SIDFjGrnMcDz6AG2Pe8nO
	 6iIbunPtrKdjWCusATTE5QCN1G4nVIYEAeSv0TUldYzrX5lrLaM/ru4zRF5eMtHY64
	 Vv+j1BbXrWsy+6gqrq2WvyYO3W8Ca+wlWRwaYOb2+dqGgqBWAw/wKN2VUhino2Y80Q
	 u/bTFSFArp0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5694AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166644245333.10946.1985025345585034005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11d1adcc331a2f51d14b0c3142d7a3309760d03306710e3aabce055a1f58803
Date: Sat, 22 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666442453

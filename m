Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90377B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB08C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664833853;
	bh=jYVtdkzRp1klj/ANKq42K1f7928W17Rj87KBBmhSMr0=;
	h=To:Subject:From:Date:From;
	b=qkKKYP4JHIc4jOwllLWPUCug7+qGSE4fn0kwuXrzAMPc7Uf6kEypX7/DUBaoxPM0E
	 +kNrlcKBa88hNh509RF2GEVnBQoAi6zoTxcpRxoalDYL4i22Ia22nAvx2HyDyn6WdO
	 9xjXdvP7vSDuk8iI7yFWiFfkenzsRPZjeSIbXyS7EArkdX4XPQo9n9MUq2oykeFjIN
	 L7BPEchGWbJUxfQc20gMx256+E9KI25r0b6mSoWUJzICDG7RTr2Vu3kc6UCQHZwn4o
	 //1wx8207WTyEd8JLMwQghFs8/FEdn9pkkwavKyaWeUYuREmrqnKu86v6LkEWx7MJA
	 uyw3OsEpujYaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53273C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483385333.7193.5065725422149628340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716dbfebf59ecd0ec4b1e79752e2b73428c939b5d12aa34fcb6af0d9388fbc9c
Date: Mon, 03 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664833853

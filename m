Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CF27EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F27C4339C
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679898125;
	bh=INgRi5UkM+B0DRTGyRKmwpy+7eqQ2iN8us31BQKgf/o=;
	h=To:Subject:From:Date:From;
	b=DegrKnf6Mc3LWCEnz3Tsi+mGyjsU18b+LFQoKxPNo8zK40857mz9w1lMtZeXlwNpF
	 77sf+l/kFnDQN9vpSk8dbK26wSHlNKrHihG2xJ0vb7nL2BQxwiRtfXSfYIPMOKs7Zj
	 Pdw0gahuEV8j3eEOM9nLjjGFJWERUybOyC7z5WjKd0AAi+EbHK1DbEBSJtVZQA+/Kr
	 vVi7ULqiVFELu9bdnBRbZ7qcn7BvUi5ft+otxut44cOLn6E2vlu7tQXBn6oCo0D8uA
	 E7i30yZqijBk8TA3OOMTDfp8/dbCpVXFfsqJm5WQ6ttIldwHf4rg3YMplrR8VQptNK
	 yl07Et5se4k6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E05C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989812578.26810.9742088081690302758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf8e979dbf92c7abf48b1c49160950d9b6db2750de1f3bc3980e4a09505ebe4
Date: Mon, 27 Mar 2023 06:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679898125

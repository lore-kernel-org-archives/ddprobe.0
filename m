Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FD5632
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMu0O/Zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8B0C433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701924496;
	bh=vvR53CcMa26XivGaVPbCEYMKTwMLEPEvpGFHQdVWxMQ=;
	h=To:Subject:From:Date:From;
	b=qMu0O/Zc2gN81GMaYmbGdjMWKJh6t1vC2DYrakFJVFbnvUPY0vI1m9dy5FH0qFvyS
	 CCwzwIlWhyjIjp8lfVBXGQ7agxaSQCQGAyoCEMwB0JbDqnCdWAwBj38sx4nhPGnlHP
	 wwt9HoTJhsYmemuKuDSEs93o+bb9/oHDvoH6/kUqaAOH8ALwH1bKNBcj6lg1bXaz8v
	 nuW/fQ+9b8WMe5Sf3nTcnxgmElxCwDmdaRwWq17yZBPZSpq4tsigqfPvMi9H0u0jnt
	 RkLevpKY0hI/xaE7OGcEvqvc2deXAiTrs+kJJhfOwgum0Zb2XdSlQUPbg85vSKxPtb
	 4lwAb3kc3N9LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ADCC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170192449637.12170.361804190331789636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff85277bb764c8e539383d39b2f7f1c71daa3a34b2190a9927ec0010e6673629
Date: Thu, 07 Dec 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701924496

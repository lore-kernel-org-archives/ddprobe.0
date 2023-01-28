Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B51192
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8E2C4339B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674938585;
	bh=qdO4F3aWkoYnurq297nAnnHDMhENH/g4Le93BTZFLb4=;
	h=To:Subject:From:Date:From;
	b=YK8z8jcBNaA3Nm5hI8AMzB8XARE6ETuD6Hn0w/UwAy3S9u8EOhAA56OH3whFzWgAF
	 aRKvF7/GB7AcL/5fKphIhycF1Hh2OUPAzK+MyFCwsaK+77j27jSBkzd3Yu2pGWi0FC
	 PBAnSw9R7vYIKzrACFlMAxEiLdLTT7uYN7ZurX85oJmHJDzIsIfaYai3FwrqOJc6A1
	 GIHf/1Xf/IvVezunyPTZVFppIzOZANiPXSQ8CQFYwbSkf80f9OM/sEmOpVhBI+U/He
	 DHXEjIDrZUwScd10c8u7v9xO0gwRywGg5nJhoa0nDWUroZkflsC4HHl+IZ4hyHypfy
	 ANW37FWizKq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C189DC636CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167493858577.23196.15745554511042602651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abfa0868b9ca67d2e8325165d4db60580bfadd145be960e0b39777e081c187ce
Date: Sat, 28 Jan 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674938585

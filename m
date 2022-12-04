Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3677C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835DAC433D7
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670115654;
	bh=M3hLBVGY5cg6cak3mFKH+hH2vYDLvGNgG7N91Su+CjY=;
	h=To:Subject:From:Date:From;
	b=XbTLxHAHQu4LviXI/DD9epxY/kgYCji4JnoMfm2pRhTySNHXFDkMzOueGY5VQz/In
	 0BXTn+AmeBqM1BycLSN/nhrsg4qhk+IQaSAwSUFofMk2CTMW/wx00gUt6xTW/4CKjn
	 90aosDN6PzqshhhBpElh2ucjgSKZmJAM1sgTlNuNmeJGjZR/7gZ7ujJUPT8Dhen+Kc
	 w1+ZfmTKvhKiE63FMz5aIni/jmtxTm995xDo6BzLXusB1UsBs5N3kIgOze4rqOe9+L
	 sDDgE9oA5nTKKx01uPEzg6RkaIbWV5UkxRiUzM/ZE/CIh5/ICSNkhBK82IJaZIyHyD
	 NFPO3bkBBOyzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB2FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011565434.17861.6797792114742068102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0a41e846bbc59cab7eb35aa1444c6ef74d52fa71be1e0d883a9b4682b07e43
Date: Sun, 04 Dec 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670115654

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4123CECF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7940C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679920985;
	bh=Dkau0FWve3EZGOxI4tqN/0jlur34VoCgwWaQ1AIjYZs=;
	h=To:Subject:From:Date:From;
	b=QRHNzkcNaLMitAScXCQP66sZ+mFPMwSIlcmJe+0MCrfxs7g9lnjPrgIPx8GUzezXd
	 HvSWqJm36bD9jZx727NJUb+yQDLeo0uP9LYUkwvh0NdRw9QDzEhArHbkyiDNwKB2lV
	 Q8B81/HVFkSKSrzRD4ZKPgjDJzZmd5/AY42yzoTLHWqYkaqMSs2rmkVTdMHNqNET/b
	 wAL5kfXvt9a6eD6UzJ04KBOFYdlM2kYyJ8SitBVz8pq2sVQV+7xjH8+HS9FMKJMBQD
	 +kHPsMJ0px+BwSbtgUqvEsHbvyCNINadv+cnoCP7fnzma0SP1vvbG9GUGFeZ/rpaXs
	 RGenoJY+vVb6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8555C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 12:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992098580.13707.9036338796212657785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47274271fb04db733a2041d648fff93fc323103ff6246f86f1ba35930a742a94
Date: Mon, 27 Mar 2023 12:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679920985

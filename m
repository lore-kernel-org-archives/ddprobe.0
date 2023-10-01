Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6311C29
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 08:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C806BC433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696149368;
	bh=t3qEe1mH3COVh/4ZLLK5N3siXs5ekf5A9o7mLMOKSFY=;
	h=To:Subject:From:Date:From;
	b=OFnGNNoMQvXWj9iS+eOZmyF9MUocIay4434xhhjS4ItAuuyVnbJ0VBlmTpr67gMq6
	 CYFunFKkgetm6pGVsQ5JrcCZWTGpZOcBcbKyggiMPr3Trw81NdTrPoCpG8OkK8qBBR
	 nDPFDyQTQgNL1j3Gh/aBCLGXMqFVca3yg5k8hMFXbjH4d9ThG1ckqgTRjzf4mHYZnE
	 b/CxkbS3iqXymHRG1D4E/cHGmqJ7I99WK7WLPRwyAVhjFyJ4uNq/an4HRSN9gmo9aM
	 QBYrdFZdgEGj/Px1lzQi+pLhIgDctddBh6nfVgwth9bjFDvBIfWi44mdm1wzh9r2yC
	 kH+S+BJVVmvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A952DE748ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 08:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169614936868.28278.316938509245760477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffb024ceb128f600c8e309fba9c8ab61dc786edb40e0e89d91dae3a35f3e6dc
Date: Sun, 01 Oct 2023 08:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696149368

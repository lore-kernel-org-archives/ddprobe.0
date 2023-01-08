Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE89017C0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 961BAC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673140887;
	bh=XUK6zXLFH2C6uUkhL1PwfmiX6Irl3uJpYZMLPpb61Aw=;
	h=To:Subject:From:Date:From;
	b=oh9V1SWvQ/ndDmdMl0PzKV3falAyp9O/4nIebZXbP+UCt4WdPm2t9QdkkNHeKvEHZ
	 0P8JqLpUsBCe7ykG85FY+f3LSrVLzFBwVw2qdS//Pr6CWXCL/ZfP8KRct3bN5U2FLz
	 2v0Gx2q4lqiGxwqS9MzQtD9SSHH1LbDPnfv4BvbXLhBAuuq48xfCPc0zjW2apvGiUG
	 XcDq4qsXgaHrIPl3tyFinxnmagkJ1TyhBAeg7eem+krf/4jbNE7DiCiNH4NoHCKlC0
	 aqOZckv2ykK6AB7MeMvDBA48eOCt99G6y/OhGTml68XXuXGF9QbLwo6w9u+TE1B5zk
	 NVYqaaPncA8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79431C54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167314088747.15598.15646807515079587709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af2576fa68d12947f1f4fa40ca0ee4ca425d6bf19227b678c08cfc2d1e8dc23
Date: Sun, 08 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673140887

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8E0BA51
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D122BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677282305;
	bh=/K3E5fbgV+Vesf+nFnIA6ZRFvs8nBCkJ78ZONoM/QT4=;
	h=To:Subject:From:Date:From;
	b=sUP0p//T9Pvc7EaO5r+mDCcI333OI9yMk//eJ1dJSH5mLTuQHqqzG8vSKw6dbI0at
	 yUeLCiMrMEvtqgTSJmYvKbNn/VZdohbLqWrb7h95EuMoK5reARXR6E1RzpdNxNBYBP
	 tCLEOt9y1zm4vTIQxr9pR3iGZbladW3MZip10ELgQfOM0MCZUy90SSiBLR777XLZAl
	 EPvo9A/iVJJqOyy7WDMAShS7mXsT0sfjFj3hOSF+f2LMctQH0ezcJObqC1CYQMI+sX
	 PMoTMPU7JmeKZp9sV5hVfoLG7R/JkNV6kpJeaRCaTw6N1/2EOBwYG6KnNLDjZ7pdIJ
	 KWhcA4WYhbYMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C21C6FA8E
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167728230574.29916.3346364002654058675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c79ab9cca8defefeb27cad6cb9c8037723898b1e931225d2e58f49ecf37fe5f
Date: Fri, 24 Feb 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677282305

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D6410EA
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26F7C4339B
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684113545;
	bh=FQd3izdtSJ50+t1uJs4g/QUBqJFjU2cSw91VsU6KHrY=;
	h=To:Subject:From:Date:From;
	b=hw/+CBj84GUDXDaRU+6lW/DdYcEYSUscJFVP/ZcI3Y8FA4gADa1XjvPofRrgrgXq2
	 +xrvBotGG/o+grm/YfY9X/mlN9wQ8EDTLgHG1DynVBPoLSO5yU/pungDzSGzw7XLnZ
	 EkvmrvA4phs0izUCJdUa2RRMEbhwhEfzbWLYQmnjvjAvXJpjNKUNjVAyUbJ5pheSf+
	 fiKly1CF8b3JHET7+NTy+tFqgNKZb/K/+tGTia5TXJ6SajExeG7cyPjvEVIhHM2iwR
	 7ialWW2pYaAtFAxyTPldbybNaOLCD1Yrnse91Ac/QoBiN2PY+DsmMD+5OgdZrigqx0
	 H36GuE8o/EUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DC6C7EE25
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168411354573.27780.17877229437089270683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fe7df2983b26bff82d252c5259c1a377ab7d3e45eea9cd3c0a56f1d92e9ab2
Date: Mon, 15 May 2023 01:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684113545

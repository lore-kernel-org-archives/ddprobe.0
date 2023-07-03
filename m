Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C71720F7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 09:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8597C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 09:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688376968;
	bh=S+1BOntvF9I4nKbPExxAN/W/Dbb6dev3nGlKa0BS1UQ=;
	h=To:Subject:From:Date:From;
	b=OpnxBLYT2Bi30Ar53AeXLPYb+I7FLgMTfoqnRjCztzltcktZmKBWc4Ik8/hXBxg5D
	 z4jXfM65JTx4LYo8O8D3uX9d/NCEzrPNDtIlUj69aWAv7pq+eVSlylGh/yLBQu5PLm
	 3jt7sHJHNYrnkq8LtAQ19IWEdri2v9BaG73iR1XwFceF3rETa4RYLkrAEP2022VHPe
	 n7zQTBGYj9MG3U93D7WGwENMJmwtPim0HOOthMPhbceLhpGYthjlUy2x7/RfteZlW/
	 s6Oy+N4EolNNEo9UvoDMHhHe9PSZEd867u2+L1xWn0wXtAAnoWvkS/WqHFH36UM8Rd
	 7fc/B7MzltTBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BEFEB64DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 09:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168837696871.15825.7744519251937937777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880b4a179901eed37545c96d0b54a0ad350142ebdf5bd8d0fd444a4a3d6cbe97
Date: Mon, 03 Jul 2023 09:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688376968

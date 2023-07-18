Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6460315A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 06:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FD7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 06:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689661268;
	bh=N3L8QgS7q3Mt3NoarzQWv1Vh5mIw7cRKPd7JK2MF8hg=;
	h=To:Subject:From:Date:From;
	b=aMcSqOFDHPbP2ux8kPNo8MIWKfF4aA2ZSUbeAhVe7CXcWALDxu48EcOpZ2BYRFjsA
	 ZFOXsohUNKGPQw8vBi5J4mshptGx/j7c5tncmeiUtrYCqlDDXmJxsMf7CDCB94IgEJ
	 jRDCjcm6m1iIkV69pjuvpwc/rOihpN25YCjLvo4yyeFL8Q6tiZCt7d9UzbIyXQALVM
	 vcn5Y/OjW/aWMJXo2PPPp0SAI6PakiJxQWuZTtDx49p7mx8vZvNKWIC8t5BO5WW9XH
	 OkzW6DAci1xCDRgiJGZgksitz0PvINAFd+e67Z5elwEDiMCRw+cw2MoqnisIIyPYzn
	 ZZSDEutXiHmNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B8BEB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 06:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168966126868.9550.8456904649033244813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd13cc0e49450be323010e7bf6af52c84379b575d0a6f345a40737bb72c8e4e
Date: Tue, 18 Jul 2023 06:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689661268

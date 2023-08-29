Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6D317751
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 20:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24DEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693340648;
	bh=kky6tvndsneedG1WTPL9LwxqQTaDeCbKCWW0AD/X2LQ=;
	h=To:Subject:From:Date:From;
	b=HnEHsIPXQy1ZXyLmUbMGTlrN5qpNXIM9v7YZDFtW+JHaA2AN24+ayREstG2SS0P1s
	 y8P/UpW9DP5ZatFXqGX5qiILNn+W7rbItC1YH6hTuC1dPFBBhqE2Z6Nr6AR9eQfJaT
	 cqxOnuHjmqzgOXeyTav1j3E3+SbhAraezwQvoGPtID7KkvCvjzObQdclallSStwoJe
	 BIw4p8hd+vgaWeO2B2lrmUbrrOw0C+ZbemYYD7vnqH+rUvYtnQ6Zi83ZMO6Cy9AByt
	 jW0zREATKdxlCtMSm880Oy/Xv7W8nAVB97E1Td5k78Ssd4hOg8Iy9Mro1C90+MMy5v
	 Vb9Wxukx6dJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6405C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169334064871.3383.9306870592151412770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8870a8e6964499d7d9e1723fab53afd301134fb0db7b893da2d634f81ce5356
Date: Tue, 29 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693340648

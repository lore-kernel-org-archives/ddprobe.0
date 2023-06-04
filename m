Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E79569F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 23:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E267BC433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 23:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685922545;
	bh=weC9CGoSxH4xPNkUuQ55qZ5D64gAUsy3mNrd9IICbfQ=;
	h=To:Subject:From:Date:From;
	b=M0mATANauw8/xX4O7FCq9f8Rd5jX5LJSBJYRdD//EpAvGnKxo/VVGhRFZLSdO97Yw
	 Asys6tyWwXZJJlVl5hpMT80Vgs+wtspE1JvB/iOzlnsc4WdeSu2VoUmvGs+FNtz8TS
	 9f3DcnSTwd4CViitOqGEJNvOKo2pr0w6L+lHxkcxvvpnZFDcGQ3FtvLrVl9FiLuJ4v
	 bAn8b9zkEGI4OMEC+pKe3XgiSUzNwMHTlnmqkh+DHv6wgFzEmCVShyKALMQyaU5oE4
	 XxfAxSzrg23N6NHtP4JJ2SmOBflkJoF5TY9yyjYI22DDuVBPZG4r28RJ0hjCFUI09Z
	 lkE1LHclhoyqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE807C7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 23:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168592254576.25292.6673420846989679183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afd4536c88717373a3c1cbe2d263c33aeb69456b03c34f36544193d4ea6b4e9
Date: Sun, 04 Jun 2023 23:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685922545

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24611FA7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C78C433F0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673938287;
	bh=3YrAktk0DA1p/RhliuwHNrCCYIfXQndOZ7AaM2CP2Cg=;
	h=To:Subject:From:Date:From;
	b=HPV20+tkxBVdEMkpJ7BPN7h3jXgRiAxjZA3EAUv6ORV7pbQbdzTByhH1UJHZ4expd
	 NuyhmJGiFbh39Ov5U7RAOHk561t02r/NK5x7lm9+TnmccOrN/S1iZ+GldPIoVBB//O
	 +BU90JQGCWCj9O3sCnJS1GnAP38tcN9o5Hh5lmv5dSBaOGdikl+WeUmBNfThyyVu0y
	 iHIFcY3N3EM4RCt0JZ+bfMufM9SrK9jNW4KUQ4UE0wM7oqMzZdGdHKZBbBReaNcHWk
	 7uRb2EFBYlPevmM0rhyetah3qvRrZkHMr0dJGhkKN8DLpi4YbDP/RcTv+XxU6cbN2C
	 toLpDaGqDA5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E23C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393828739.12840.2671799949913293955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46b7345a23c521d249d326d6b61a3e432387081e2a2b9be9d430aca4a668a6e
Date: Tue, 17 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673938287

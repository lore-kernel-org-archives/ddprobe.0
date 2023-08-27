Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2C1EBC
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 07:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BACC433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 07:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693122848;
	bh=rzSf5vHVyH1mOBi2SHkj/j0KscIwlQQxja9CzpC5LwE=;
	h=To:Subject:From:Date:From;
	b=MNa7F1XVcXsOpL+tiPB6rUH1yIaLu3MdyaVeILuaMlLEqoKJtBerkiSWPoh7OVQbh
	 MyhkWI1+pc45mBByhvjIdR+Pm5Lk+kqtfDbu16y/4ECIYj/J3wgyMI8yNjFfAWpDCG
	 65Mw1EKa8i/50Qk9WGNVR77Nh5pjgOZL7r/cTevFO2fUQFGimURGGxJANVIQeM8NIc
	 egxbAGCZitnZoezELsCE4J5gyYHJsBz0Un8MrQcJZWwpHYAgzQfNZee/vP0Lm4P+tv
	 SFaGqVO9X2ERO+8N38fTFC5sa/iINpADRYMJwKdWX3ScbjyoDL8hjp6QX57ZbIquNP
	 n9G4otDLLPLRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEE9C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 07:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169312284868.8866.491725822333447095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0ee7aa53d49e10c53bb8cc6d1631c70509baa39e3cea180cf7db3a7b7a86c7
Date: Sun, 27 Aug 2023 07:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693122848

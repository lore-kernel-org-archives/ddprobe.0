Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECD96ADB
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBF5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668286854;
	bh=PfC3ZSNy/GyyJ7uyK3/nm0UJuvSAiMxE0fNzQ9xDYDM=;
	h=To:Subject:From:Date:From;
	b=Tc/0U9tgT9PCw7HwOB1dv/ONPe0jDzpDb63SwGoo+sF6HO2ZaXYOVYl7HJIdgKx1c
	 3Hvr+KjrOnzSoHxSjzctQxecgbo7SyRDIEmTdV6PWw6QhLjKEQjVPmrNXZIAoYd6F0
	 7cFjUu072cg744WmXCbmvmzukjEGsTQwDejfH3eIV7v2RtdTTUoB18rCmpkBwAhai5
	 3uouXcYuKRZwEW4UMSiXtGJ4ODC7xMHYKk6SG9JNH2ZdBNEs6lUFjcEUMUqIzr4j2Q
	 N6DXw60KP8LEXa894WUGowTU8C2L7qdy+flj0rfTe7JgxMJ1qyRCszc07MSSLtbCbp
	 SN9JyVENIuEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602F3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828685438.19010.6734712180133501410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593781204740cdf206977578975548070218c2006aa37bf2b2ac1ac0701f5ebb
Date: Sat, 12 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668286854

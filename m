Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C078322A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 23:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EB8C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 23:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680737825;
	bh=Uqewi8UfurCjLFzRlC8G1YO2s4/nuww7tSacJdLnVYg=;
	h=To:Subject:From:Date:From;
	b=ujGC1+SAdCYnkupUtLZK0n7ndJeBAo7OIiT2qbgKtg4s+943g2vKQdqtERtahozVk
	 V40qijd/yXZz1g4ex9J5ErwIudFJdNOn4k+HhtqLTqm5iSv6azxiTDIjcj2Thw1Jl3
	 DEnyg/0nZHnf5xjGbS7kKyOEymwpVMCJ7HrYQmBSwQ9ZDsww4/UYa42U1apI7u5OI3
	 n1wUHa/euW/Z92dh0X1ta8kAUZrj6U5hhx5nkX1ueIB4PtiVLRCc8DotxwfNnMAfCG
	 T0dkEiccdRqvvQrXO74G19mBz8Hjdnnu/1fpq6A14zl0K7mclQCRcn47u4gfLZXRMC
	 L3a5WgioAdg1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63FCC7618D
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 23:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168073782579.32150.4243618937430141601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80becbc6a5a423cec7027241ce906ef7f0a5dda415f429aea8cdd472df2e1255
Date: Wed, 05 Apr 2023 23:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680737825

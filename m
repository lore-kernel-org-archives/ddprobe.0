Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1FE3205
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F386C433D7
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665878453;
	bh=5iG4/lInLVz8DXR6gnAuHgUy5pN2RokockSKjaX3Q7I=;
	h=To:Subject:From:Date:From;
	b=RtGenifeY3Ems+PiBwp7WCxPVQuFwZj3VdXWH2kAFSrHfj4g5vJzuXw0jzzc/MFgF
	 yxuzFlHLR5PU+5/+82ZtuC1lVI1Gu7kFy1I/Ytf/6jgbJAkuYOOWtjS7dtlO/a8JXs
	 XFZj0RJIehKuJ0wi9VjK2Xvg2A1CcD7JRAu43vYrtOxKpeB+1yzcv4hfnXCJitT6Jd
	 1VpE/YjBz+ua1TGSqO+jPEUF/bMUd/iis11vBcjmMyKVIP5U23LmjfPZPKX4+1uKFU
	 CJxN7X14amoFPniUz65eB6Tn9Ffr9rrcvEHNvRIERV9nmh62Q685Y0YjvhHHdPSkBG
	 4qPlX0Hp3fZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F1BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587845331.14548.8161113916861200981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83df5c8b02a0b75d64a86b85ea95e204e81ccd95e2501c38f7ad32ab6ecd199
Date: Sun, 16 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665878453

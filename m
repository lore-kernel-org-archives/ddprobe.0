Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1D17469
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgM0AIjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7759CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699784296;
	bh=C/89yGQny9SRMMa0guKwcd23Hk6ReXnENYMhhJeq4C0=;
	h=To:Subject:From:Date:From;
	b=OgM0AIjHxKc75PFh+M2WEXvAUowULtMJAmJFZVuOVoul24QPZdoElqCoUgM4KUHSe
	 WU5hHm6/33pOQdIxLWD/9Tis0Rs2gVAQp/KQAGXZdn5wjN98E13qk9H/6Wlkv3en2Z
	 KXDz/dlX7LfK73A4A+MXjtiDZQaBc8CrVn9hzaedVHmXb5q3ZFy0NpsYxU49r4vsww
	 PrE4eBOkhVRIr7104bSYHNdzbagtKA9G++xq7zF+3cucDNbU1T67h1fG0JCMql27J1
	 yDJjPRwWWODx/VIAXT6p5Hp2NgSaea5yrRxfoVdh9+ijo+SojyCz/SjqRP1i6iGhde
	 rvFTNThhv5KTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B41C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169978429638.2026.36554840668966429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bffe6e009dd370ce1059dc3d034630068c8f735d981408d2c0914aa7ce7e834
Date: Sun, 12 Nov 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699784296

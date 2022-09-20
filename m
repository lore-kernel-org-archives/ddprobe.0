Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2CC7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E9AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663635653;
	bh=e50DZLDGgXLNslQrN4K/j334lISSLx63m8KwC4YeY5E=;
	h=To:Subject:From:Date:From;
	b=kJqpjDL3IrAeotVaYFi0OqQGXCEY2NK9Wj7ZbeQzNVkNPD/13ZWP8UFLvBV4ZaVRT
	 JoktGcL52KYQYv9XWWic/+82q0KHJdH0tJBekapjTi0i4m3fAVjGi0Lp7qV0HBeFxu
	 E1Ki4SQFRpr9B1AtsPwQWgtKh0Hgku5MGZCJwlp3BlzwD+niiGeBxs4SEp18Dh2lGz
	 jwEbKveLqpJ3OXmEiiOLUAuR8F1EHXyqZs550HsEfYSXwMl6yHec+/MGXgEiRuEG3H
	 vpPpvfd4ZK1vHwokDgBHK7tWR6AfvV3uBG7fgWeNqh+cNklQN/2O+S1eys/1HUYAsh
	 76yV8l6uLHJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52206C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363565332.4884.12136197907010771478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c654db13de82b6de08b7baefed400ca8b6bdcd0ffcb077e7697ac0cf834f7e67
Date: Tue, 20 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663635653

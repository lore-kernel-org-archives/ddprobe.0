Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242088C00
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 15:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA415C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 15:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675954925;
	bh=3QS/87BUkBHQFrOWP0CyHB48QvigQS+PfD50SUv9DPQ=;
	h=To:Subject:From:Date:From;
	b=jdClBPGUfCUyrswUjM/87rLrYT62L/V0hyh8CEBvzjWMwNoYAT5kejzV40HnG4V9C
	 Q7TinoEr4q3U5XfrSTLXF0b1p+xxRnlo9lGw3pYzcWineD60IdOtNO+lqneKAIqrE3
	 FZ9gdgD8dbQgPKFr6AiBK+nu2AnUr2nQzVx7NXhUW7lZ5BV8Ae0bJ2vF6HVHBNae2g
	 oF3SppLCCpwhYarNuk5NslYAfSBCx6ESKeAsbjwilYb4Humdev2z9UHrADDa1S/YFb
	 BNjU9NyUHOKoSz8s2fEeG1wUS6gf0ddCe3tU3mPtgiKdvklKmRMdRCQxLbPQxPoX89
	 z+F+TKX7RJNGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE613C636D6
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 15:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167595492577.2878.16575447569823687835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e15aa65a6d03c26cddb42198dce1325a91940092ad7de4c52f10648a56976b8
Date: Thu, 09 Feb 2023 15:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675954925

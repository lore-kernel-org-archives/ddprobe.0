Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F082CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B90AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663872053;
	bh=NXUQ+WDpBnqJhlqCaiQl5QQggfanvO96bkF/kWHk2z4=;
	h=To:Subject:From:Date:From;
	b=sET+mqcJ5Wsqo2QKgwDKukl0mRBKmnmjvuD+sJWer0/WcbJtv0PGTkFzYv5b4bxAY
	 GNYL7RkH2PU79X5fNBUB3MlYwrVj3xGLycHYNWUM16ehcAxDiE54cFs5JCcd2RX/Fa
	 vf+JBvKKeMMgckk4gv/5TRHrtJecsvZKoRBY3ixTgUfGVqWDuLiYphT+PM8wmWiYg2
	 4wOxh+MR6Sn9ITM5fJVsuH93sdVQkiaSLVjQoBOsKnGy/22+o/W30Z4vnLniRbEZXh
	 /VKkJsUiU78pJq7w15MJkHSmTHMA3XqacVOvBZZWP5qo3IH0eyjm7BEHtwY6k4RHhb
	 VYQSNFlzf0b6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63339C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387205339.20147.2996150729834853729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b118a93447ec2ed95b79013432c6720f1c2d88bafa9414762343b931aa3db0
Date: Thu, 22 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663872053

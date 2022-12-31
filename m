Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99CF3C34
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816AFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672520487;
	bh=GNXVPW8D0kNCLQtTd1oXRcs8HHViT/KFSGO0A3IfLYw=;
	h=To:Subject:From:Date:From;
	b=YnElsrnMQfU9iLyHt8CvJqLQYXbx/MRa3KFIcXXGWF8UlEKOTZDOxeX8SdVFxvVaN
	 yq+GPo8gH0Ng5uS5KQA0w4S4g5g2dO3KGlZoJsQXiO3ldE4raM0kayq4afcu+oNZry
	 s1Buu9o8PzNCSnR9ZpAkX21dd0TmvLjdsQ/C9ZZz90IOyInkNQ5I7156iEm2C0irF7
	 QSVU8+vshGcILN4EbuT+ZT1lmaR4Ei/kdLyOgX1TpztMCn497TONWdtrG/NE8br+mq
	 hASFpOrm53LleSUpZUcT3CBru0nNdyxR+qFQqMJN32aXjL8nY9FnbwFTAe3J8FeeF3
	 tdN5ZbuWcDeuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CFBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252048737.32086.2351261945290300717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8aa93b377b89a94123a1ceee5c0f4eb7696e0cc9de3b25a8e84736bb20c2e7
Date: Sat, 31 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672520487

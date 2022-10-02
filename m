Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E8815D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7170DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664689853;
	bh=XBUpRKw/px1vzXZtVuinN4ny6ILeFGVDaw8YXMRUU7o=;
	h=To:Subject:From:Date:From;
	b=OFhUAHPQ+K+l75NBfD1q1XG/DDuaKq/WdrBPF/n7blPh6HxqeMKYCifOMA08599Yr
	 s1JqJRqRK3eeymgloS1CIXp/PvZUqOxLncw6267++TX76+QwEVMq62ebzUdA67j9Tp
	 kZfZAyKnkzOjvYhZG7HLbOfDzEoynvfOhIeL+YeTaqU4uxMVk52L58pIZAlWFoJXm6
	 Sy+QXHkXRtgK9Z0EngjgCLXuYFzhPQ1n258ApJrKxIWoJ986aGdia0qZfv6UhHOfh7
	 2FLfRwDjU/oGifTr/hI9toboYW1BFH+c5Y+5izG65DoOol2O6u0XU7QkavvT7Tsw+O
	 euN8k7uTc7vmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5404AC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468985331.29786.9538800236914909821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee335fa8f37d13fab328fe55839f8017c488e053e5f928330293bf440618978c
Date: Sun, 02 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664689853

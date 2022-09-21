Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5EE5C9C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7854EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663776053;
	bh=C8NjCIlXIdjIMWYi1uFA8KOSePx2AmcpYOhCnkjo5PU=;
	h=To:Subject:From:Date:From;
	b=vQVNn4bGBKnflcC1KHqRSkUF2A+iA47F9ov1KBywqPdbMgBV+gANbAv0hjFJEqP0O
	 nq2NuYBfGgNe++kAZ1j8Z2bsADh2BHp1hm4aZd3UEF/CF537kajpxZfaQnGk7YeL0O
	 dku5U4r5tH3YkhNxTsVFd1mhgv50YfVmWu2xhP2D1KF29X4D5WJVuUAiN/3cfvK+db
	 r45LewqCDKxmigHmes82jTAI9jNz+yShKXCvkCQlrJtJiOnK9ngDaYDqDz+6Vf8I3r
	 5nfvZBv4vgjZd1RkQToqIFCrXWnI9WsSqB50kHOh5/vQByvzAOZpx8lrUKev53dC/b
	 kTuh7OP6f5Faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C47BECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377605337.15933.12362998259797983016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61c32065f24b2875e250c319bde81817c052645b263846978b259c4360ce1d3
Date: Wed, 21 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663776053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBA215CE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C85CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668661254;
	bh=P5rh+cJIBOuh0Zvg7v9zhuCg/NjKH1xvNxfVlr57ZSo=;
	h=To:Subject:From:Date:From;
	b=c5zkYGzuER1r0ebXsmlaW3mn2NUt6e29aUWrz9ITe9dh/X01cD4LWKQmSNEW4zm7n
	 glhKr5/2mgwc3vIhqmeUndS8c1F7RRr67rrLyPbxLp8OuUYItarcUWqgP/dzcoiwOz
	 UGiWUUNsYSB79ngPEJHms0V0/mDf68UMZCJA9ngxNU/gK3Hb5wnBcl7PGvst044iTM
	 hvdg/wVdqEWNcPJb5JLiGj0PRwl2F9n84su86BXzpTImUN4fxrdw27bCspYSBOU3Xt
	 UZ9SY0VhMrrg/R4eETDPvVfh71j30vRq0HUZzpehUqpVArl3UbWD1u2Z7wc32VPd85
	 7qXwTrXZ+PIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C52C43217
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866125433.14063.14858975971802964083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63e0d2457a83aa81f81a2cb13a94e6d5d1646a94303143e8c96e66aee4c41be
Date: Thu, 17 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668661254

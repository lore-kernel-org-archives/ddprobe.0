Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F89A7B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEFD3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681622706;
	bh=N1sXrAHp2mPRBYChD9dUqY4ewCxGYCYgWO6fv9PavFk=;
	h=To:Subject:From:Date:From;
	b=ILkquQNbemw43Ma8gWBmpLPyUjcZq/QLVgSvH8Uyx4zEjtoDazlTBisCFELoJhnFh
	 z+b0x5oKo4j1sgZhIfqwBSj8Q24w0lawx6JGVMbRI+RHYqeui0m8XE6+7FD3RU/XRr
	 K+7KZYrlZFut29g2U2WUD7mtEXDjBu/h6gxWEm2RM5Hy/5AhL86Wwf4QHvZbG7LbjR
	 N4/91RrXUwWWqCQAEchGDRg2CkPNSM5mnfrd5B2GOZNJei8pgzhvBBGu84zr2GC4xf
	 R8ylqV8kignVui7uTyAuAp+I3g4kd0/shWuwjYYW/pEbbW8nKTRqtz7SZrssbhnTJi
	 yWMrTiqphnJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D33ABC77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168162270584.9856.2701889214397826721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888301e3cb7a4023fe7984f8b2fbc0e40145a7587ccb6a9152327b727cdf8451
Date: Sun, 16 Apr 2023 05:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681622705

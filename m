Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F08279FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1097FC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688833629;
	bh=vKs7xzsymX6XXq5d5Gc1FXGlRCC2ggK+6tZiZQHvWxw=;
	h=To:Subject:From:Date:From;
	b=MkmBOoHPJdJBlK64A8deSumVgzqBq7oI8K2AYiM5HQIX4vy9UvVfQUNuGOESub9F9
	 0X/PyPgiRaelSJHIgbR76ITo9ryBm372vHkF2e2mVgxDrNgzRQwEj3u4KgtUYYmOlM
	 X3b5PgQr3jLjbCPVCCyuoLxH7TwhvSXTpvgDztHJu4IaD6LiPdelxg2aTQnvYnfqyt
	 OwZvUKQWN+vpKuRdpa+jtt1YPhdToJWHjcxFfTrHFqIis+GuQU5356dqYXtBHkka/b
	 m1kjjv76VZE6IlMUXbOUhM95N66uYHY5SNhK9UC/FkxXvqDvXvB8sH//tvD3w8dtL0
	 j57QFqNOnmxHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB4FBEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883362895.25241.13930296507687270113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15584304a288fa02b7db63a0a55b90b68fed917c75afe9823f24d8d8695cb38d
Date: Sat, 08 Jul 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688833628

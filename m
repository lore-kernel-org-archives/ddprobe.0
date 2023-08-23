Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE0D947B
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0281C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692785048;
	bh=prLShtrc/ryaZbSKc3KbmlLk8xuO79kKkjh+X6l2bLc=;
	h=To:Subject:From:Date:From;
	b=JQGxXE0OxOs4jEA34mnw7leGRlQKQICihscjHlNkUAZ6t1ww403uZigU9zN8v/JLs
	 okuswmSkwg8L4KJHymka9KsJcS0vSQqqejDNqKQXMb/4Xh8VAsymuAoe6w7l5qZYK4
	 QUOlIFaUSJee+p2MnxTLqQo7O1klr5gxqvjITyiHhbQCm9BaFvl66E80hnSZ3neuVe
	 /qOfnaNU/3CfEL0I/2aXSfZ0eQJJ2hI2i2UB4FMj+FZNu4JMpH7ZlmBvNqdztp6VA9
	 FaLSG7ui9YYCyH4kweZ3waJHPRkpmCiK0jGPaTo7n/2YQxX1c1eX+Dlf2S3Rk7Pikb
	 pTbEUIvvDIulg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57D3EE4993
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 10:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169278504867.20106.484171226991073407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df73142a1b5e20c27d0cbf12a79bab8cc9204c05fd97eca9a7873d4bf762969d
Date: Wed, 23 Aug 2023 10:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692785048

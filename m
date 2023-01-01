Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F252B1FD3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB01C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672556487;
	bh=8HEL6VcbBDYSt1ULqxAyG4tchLw8oG+dmmuFZYnBZng=;
	h=To:Subject:From:Date:From;
	b=HN40+hmyokDXJIPB4Gp4DQfT2xug/57gLzy8Vr0JVH2fHM7BnvneLgorYeK7+1TOl
	 M6agCflnIrLxx28cSfdcDP7SlW/wDeV5PBy1lVjYu4V15TgSWsg3QrF2l4OFqe2oZD
	 kJEUG0dbNRxbAX+/3d3gRRzIvDc41OlolAzhJMAGSFgQQ/2vPbhzS1QNaeRQ7xB1Fz
	 m5vpAenkZaMi7iW/jW5wl6Hrs0qte10ExLi7Tijzl+tkk51jM1sfCgyfGpwkLwkE6l
	 nkDotr7UKbMipS9j4iaURumwH0Co0q3RHl36DhZd/F3Dc0/KABOGP2xfK8i1/7eqI5
	 oK6vsUsSwupSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8ECC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255648741.4851.11922740174187948058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a627511687e9a16e2ef6b3ebbcccb31f2c707b622af57793763168a8abc1586
Date: Sun, 01 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672556487

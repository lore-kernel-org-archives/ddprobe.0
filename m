Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065E821357
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bg1Ul7Ul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F2A8C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701560896;
	bh=KJC67hQ4Qc57RSUcL+KSZJdfXfMD6TwTo9WP8Fe4LH4=;
	h=To:Subject:From:Date:From;
	b=Bg1Ul7Ul/FnDSD1EZNXWHoRwg7vk7+7+zJVPgeuPM6SnwRdFh//xK+jeEUQ4vYDfJ
	 UlM9tPNkYlt8GIEUdYKPzHDYbX7OeoDQ/m0svXDfXzrsv3fEtlXcIwWkV0/YU321rp
	 q5AslV65JBAw1qGbfIV3u5FeC5m2ASK1+lJPiH0/6d+4qw+HzgprcSiYw2mrShOP9G
	 Vacw1t7y+0gM6jw2DZJfFgkNcQqApRNTRr+qki48bs25J+BQTBxyz/eXNZ9lXud/q5
	 2H/+mfShWw9f4c91zUjPsjG8Husx0UtL1FIjorcm6wUhC0Vq67n18kYxHlRyxyvryB
	 P2pt2ITrHcIig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64226C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170156089637.19803.3747940778225824399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1c459cfb5716d9d90d44fe828b187970542dd7597b512bc7b9582557f010c1
Date: Sat, 02 Dec 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701560896

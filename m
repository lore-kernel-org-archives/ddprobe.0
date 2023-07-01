Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8287D1FAF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA585C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688181249;
	bh=qlDfhAxO8i2PuYkICF/G6Zrvtwt1nqBMTg+WQcEZUo4=;
	h=To:Subject:From:Date:From;
	b=tXFcwGXWZiRenQypH6VOdS6SX/CEUwJ8NF8b0EHmkzBwxvn3FErb1F6H1CHClNn7n
	 9D5453xNzEowVJAqODaixnWjLNGM3f681gnyEIRpMY6d0iOTdygeIw4L/rUMTQQE5o
	 ElDpEy03w8/ZpPx10XbkEe+CLDZfrbGXVjw4wb8VV0iNVi5xqpywQIg1aXIQT9oyq8
	 D7MiOZSWRh+sId400qxhJ9K2POE5eaRnvblYKg0Efm/4EyNQA59cYoDu7ofdG+U3Ov
	 m/CWvGj+NsXmWbIwqdBO9hAJhKYJckNHZ5Q7EdD/SJMKmcpl3i//yZvXSKG4x81vzA
	 vY0Rf0BIGqlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FB8EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818124876.15818.959860310235503994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4609a189663d298d68d6e4a8f335c69398d572dc1f6c95c51cdc2a2fe72a0ce6
Date: Sat, 01 Jul 2023 03:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688181248

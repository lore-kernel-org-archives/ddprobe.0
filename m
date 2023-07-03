Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730683C3C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 23:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08CAC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 23:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688427368;
	bh=pttUXSQYT/vRlg/t+J1yj0+6WSae9QB/T45uxTfpTx4=;
	h=To:Subject:From:Date:From;
	b=aZTZF//CSaJwAwPTtKIsV7hHNy9L1b7o2sukMl0UVspObf3CKMKsggvUeQMQeukfL
	 2W5H9lhHNAwF8Wy8wUuFJcFJpPUrEXMks7pJkSJluSxkfngCcAJrmUPt6+dijhNFsi
	 b9bmohppsCM8BYZLC8NhCjD07VkK4rYgxZ5mIKOo5zwTQ5TgLa8Iz7wlsfdxjlADTm
	 VKTAXimISc5xJbNL0Izk4o1CFRWVRhYR+x88SbALz/i75nk/rx4LfKtLmxdwYHhrls
	 Ydjv9FsrlO4c1rtD/BHNE8jTwBFhU721F+yongYH3ygv+x+vIqif0Vk1TsRC+l3b+Q
	 x2uGH7U0zcZ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C57EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 23:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168842736870.6012.3678665703269667869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f86a46440efae9d98cbd001be36b2cb233e8268c831ec832204f05b02a066c8
Date: Mon, 03 Jul 2023 23:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688427368

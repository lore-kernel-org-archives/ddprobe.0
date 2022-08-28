Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C9D17D1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E333C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661665252;
	bh=+IkpJpIpNTxV+e+BjM3xy9gw17k18Aifn2wsyVfA7VM=;
	h=To:Subject:From:Date:From;
	b=NIlRdSYu9vDBMio3fCC2w67CJSf+/aYYQf5VXSfT+dcpLyclJr0JrtSf5AgLumE5I
	 k4nKu8qqSmgBZcS1FJ9h9jtmqUiH4EnbMMotQi4wbDwmpOkM2w5wl5ExfkdWbDjNTI
	 I/IJaSF45VfZbknJCRxf7hmxlQsPqrTIWRas567iOvGBfLzV7ZJDUy/OxLnT1LTM13
	 vNDxpTyzXy7yIFzUBkJVv8R9Uv6LY2y3/Od0DRwrIw3KD2hMHLNt2pPVS0ITuIfKkB
	 8QYMzlkDgMHdOAQkNpcW7jAiVzfI/2mmHeR50Hs0HiUDolUbxcpeoBI2c7hdu0rLgX
	 eCmyDMPWBy7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51948ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166525231.16617.8969194579512518574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa25c8acae9019caec920a700ed3e1bbb6b12d6a98ca2c182c877d77a0c5f878
Date: Sun, 28 Aug 2022 05:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661665252

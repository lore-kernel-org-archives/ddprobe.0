Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C245679EE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E99DC433B5
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669328454;
	bh=tICnJeATYYMht4IpjXfriCl6+k6plHPiJo/QQEh6Yhc=;
	h=To:Subject:From:Date:From;
	b=rqw6oO/pkl0P4nJg2LXFt6a/yMHZ4JW3wZpcJ9jF+0TLLxn6Iqbd5IvFKD9hGyNs5
	 vAgm55WqfiJBE4YAU5GV4iJgjN21Z2saVJKiJ2rfj0YrvNnDOGKV6Vu9ja0SnIiuF+
	 BWLLVnYqCkJkGZeJ5eoto1YG3XT5XfjuTWhxMm59nUFcRD+AYMZY5BFTUOaR3e1aUK
	 CLOwNcyOWsIv3IopXPa0iCf608h0PLaKbFm4yHj4wf7RIvz/kIieKV4SipEs9MoDVE
	 qCuJ0uy38GUes0tndXay9K390Fn7+cuWMemmY8Ss2JXKaodYJ+ETrgZmx6Z3RoZ0gm
	 MHpvvLRPy3KoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D74C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166932845433.20886.14806521194674908990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3ec49d76ccfb33161b70731e5b103d909d3a439698973149c41b28c508b3cf
Date: Thu, 24 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669328454

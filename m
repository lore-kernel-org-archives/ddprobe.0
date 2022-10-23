Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBAC626
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EBEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666509053;
	bh=CxEL51igJlJ/bu6Ikph7yIxKICgtuLpCtmGuuDNBte0=;
	h=To:Subject:From:Date:From;
	b=KxgB4EF6EPPY2qk5vzj8LAh/dwJYXe1clwEcMIVhYpgn1cZrL989oxc2MGRrZBVRo
	 4oc7nlAXBf/OfobqbqRIT4+QrvjDSlAD1hYVE4ltHzK7OqtUp3h4xrgcsC8gkmMBOi
	 /9KD1YtwJxymPwFZEJ351u+MtqEpuEAmM0WCX1+GlUqWEoiSSKPsEn5wYQSJ03xuw6
	 6J6b1469qy+AbV7uRFdR7oHD7Pvo1JGKRgqRy8/yEJ1oVjkBjSfo2ZMn5d83f4H+pB
	 Jkmh/iUi/l+v+DLsr9QVK13LycM6xaIFZ1qFG6Yzh2OZdEZUlBpOZkq/jfNbDa6/Ya
	 VlqjMQnyRAuMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5773EECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650905333.2649.11089929567973829848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3b01538be251b79a5f73bd1444cd7928dc2a8b19e2e852982933fde916cf09
Date: Sun, 23 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666509053

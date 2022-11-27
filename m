Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0CA3D61
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F49FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669573854;
	bh=7+/T8ID1L9VN3ZQKoU9bXOO3MKJFpJcGyXHNCuHUZdY=;
	h=To:Subject:From:Date:From;
	b=hvcq+V7rlFcAwp4ot2bbO5DHxgXbCXpsO/72Xmik+oqNfpqCm32fPovV85WXN/tcO
	 8ctWdgYWB7Nfe3uM6KcT0oRf2MjzflU+mHLW6udjudl/sd8Vb8FNN91e7hojFb6qgj
	 CM48Cu4AraZJs5f4ZC2Rwxni1s2Rq3AbyB5E86YLN3gkBlhlQu4qWorczW+CQxM2CH
	 7TZPphrDV5jK+GKiqitHSDnsLYZOLTmzbnms3iED7Gqg5dzYuRMKhHAm/XcuTJpWpY
	 bEWXOAI1rKjamTYs/cYPlbAhFDNqjxJVHz9r9MiMSi4uJKAqpYBe0hPngSjY9IjUXY
	 diWifimT0kQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54989C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957385433.28141.1310239196734701169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26eb08467b89cbbf2c3b313359897a911fcb6b73bb7c22887202d2ed5014aba8
Date: Sun, 27 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669573854

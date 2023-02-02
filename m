Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B0EAD3A
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 22:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3696C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 22:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675378565;
	bh=LnPoNe5zSzJuymA1QckVsI0W81IChROBhW1kPPmDXH0=;
	h=To:Subject:From:Date:From;
	b=kgli6YDGQ5blV+iEoWsTB8yneNYSMmBeF5zZS5mW6cknfeSsd5aRCMvy+Kry+4Zlg
	 RV+i0vdNrm6Sovn0vWIkDRHUtjjlLfCMu3q09J48IM46YORDJdDoeXkHkwSbdA4yVw
	 FbCJhUvjUgjjrB9byZT0+zWjVWulI8l2AL5AiqUDHWwvR0vapYp7pUHGBCQCet8pOy
	 lKWq1UbeWMIxga4NHAK2or94U9vhIK9qy5wFdQcFT/lYccIjJSV6IcZCg0uajgzuGx
	 AZqsuIC9qHWA6VnwrGMVqWZDfiycFsS0nQVLANbow/UflpfD7NcT8kLFJrv5qpfc4S
	 JXcnhR9ydaVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BB0C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 22:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167537856573.3249.5239587879373575999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd817b05fa02d3c4527b328d9f05c81c113b7b48dd1d7ee5079b1cebc6818cf
Date: Thu, 02 Feb 2023 22:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675378565

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618DB5399
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 21:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4BDC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693517648;
	bh=Ggm2+pxKV2BL+N5tDTqh6tvti9DKJl1bXIo0qTbS1IQ=;
	h=To:Subject:From:Date:From;
	b=qw+rLISk+tbxHku6d+EqWYpc93U5EEt0wun4XawazgLZFGOTLfTuujL5uYGk3gO33
	 9OfgA4LSdyo7j+Exz8VswfOt/GJn22s4gWPRCI1w3J4qwm1oqWwHQk1z/Z0WplJZrN
	 LlA86UHPrSOnjkcbD5LyqAsbTCfZT58J+lLYr7xV8MvYD0fB+i80pTT5qAM/FgJ2BU
	 e8IWiMI66rnx1Yq8M34EYal0QSZqc2wuhIFc9LiRz7idAXSsQ0s07cUAVSo1fW56Qn
	 DZgrVG3x6fUKvZ0Mn1A+PEQ8JztgS/Jzp8TSTjKgvh45gykVUNrPswCpSDSpfG969c
	 31vo3nR9o1xJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EC6C83F12
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 21:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169351764873.22712.3521967163351257157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c8177604b5656a2d7c6461f2f8efd563b534ac5f6376242d5b61113d10ae4e
Date: Thu, 31 Aug 2023 21:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693517648

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D165F46B6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71838C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664226653;
	bh=R/822UZ8dxbZjLzdD2cM+GWyR1kD8ZGZb9LwZ2WQQJc=;
	h=To:Subject:From:Date:From;
	b=sFxxzCvgOjjneh0Cb8S6lHNNptOl3N+a+3IaqsHbTzHNCpPrBBsXvSB7A6BybhB+k
	 nDoAUsDtxz/Md85gRylzjxcBcE+03DILgfThyFl3LEgtrvfL/h6elVcce8+KFb6rX/
	 emw/d89JRde8cQ9RhpTJ8d+Quad1q2/Kkh2yzUx6uJtt4Xai9lxcE3m912WO+eVXdI
	 PLA6cw3vW2Km1rBzbop2PUi8WXgThDDSAgNlhqzHOgjevmrDU06k1EGU626OBzngxj
	 uNpUguRNOBy37vjt+55WN+ir9k85pKGol//XLZfWIrr9qx+fOkK9mwOfCl7ebmPLM3
	 N/UBFSxACIJbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56693C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166422665334.12554.8546341484200890755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850c9c266b56c86a0bfb422505692bee3204c2a86f576026992c5e72409c8713
Date: Mon, 26 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664226653

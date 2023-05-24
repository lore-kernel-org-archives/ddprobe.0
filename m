Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E476086F
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 13:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36F9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 13:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684934105;
	bh=CHQuwMJcx05oaGG/A7GVKwWrf6plMyc+yS1wPFlhVO8=;
	h=To:Subject:From:Date:From;
	b=bc1xCwvy6rbYOkN+G1wJIbKd1faDs+Aj1zKd6oQxlbxrt2PTZTMwqa/Yy3xPvFTrX
	 Wzc0+80g84ZkcudvZhHx/ujOgInrcngsOGGAwGEjdWlr7wpSmYm1+gCFMYTc7bQ5vc
	 dmS3OUXeru1xVQFzdAZ7nhWYh+KuhWU5mwsgalDZ+vbKBHxTDr5+hNABnu2DaazmNu
	 dU9fkcRi2+vo6JsIz4TWh/vOlr2OzZRHc7jny3/EsqV48nlB2pNAmtxiNmTjR5x1JI
	 UCkNC6NHybpcXrA08I6IKJzAYhG6ZyOQRykzZFge93OFwXcRPagRv9w9ar7zgCPM57
	 SVC58us3pGF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B88C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 13:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168493410577.16329.5779291382793670050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbc41e4540354658169368167385c6ecc0a75deb6be1bb563956c7ea1cd7895
Date: Wed, 24 May 2023 13:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684934105

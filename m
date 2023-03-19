Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAAD7C
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 00:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B6CAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 00:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679187186;
	bh=WhjYRutIrtwHdKdlx6Trmfc/YPJxV2MbW7p5lsk0J34=;
	h=To:Subject:From:Date:From;
	b=kOxxxTUy6mCpOxpMBMtZjmDJN2+WaVWPNG7EBncXw/+KHnvZDkWSO/pRVfavab/TQ
	 C9SRzBWCxtueLoQlbBJUwUCFLvzj/MqzGQLd2/1CZbPKexLA0clDAZp9jM0m+vN9WI
	 oEUAN+miWm2dpUdR6p9zSefmlsW0DHxQodXerfw+ybtBfvdIV/4VtQKNgwL5/xiH0C
	 t1OQMkNOz+kg1rU0HjrN0jTpHg939gMH3qqKFhuVGDz5Wh7ipUP5ZXQ07Zc5K5jvFw
	 dhjYA7NfrcYs6ZLH4mr0RFx2K+osbVqSyE7GLhVHGBV1yS8DMqqxaFc6dS6ghLdmdp
	 KknqyNg4NavpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2A33C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 00:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167918718587.15476.2500599199919199401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab78e4ba8e8678df2228dec438c6c207eb70aca9a89fcecf3663bc4d200a330
Date: Sun, 19 Mar 2023 00:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679187185

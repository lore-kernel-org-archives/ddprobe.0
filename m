Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342442F22
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB5FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671650487;
	bh=uk/F14ENOHtIl1sRaplPKUup253w/rQ6U3y/odwyGv8=;
	h=To:Subject:From:Date:From;
	b=WWPkZ3lw3O54Etih+SE2L6uHv6gL9s8O17tCxafVgj5eZzGHibMRXsG3bBNCcFIL0
	 sT3DYL88KvL9eUAHTVV6mVfEKr6Jpp8wOCU9xk6ZNNdVY28AXQLuiXQtPrGDc433u4
	 UXmNBukRVebdP+z42UsRYmQeG444oyaaFdzw+66ekticPXVqa1Faxv51i/WsQyqQ3Y
	 fhs3M0t0Tq9UCU1zjQQifUiDpO6nvBZTdPPExKkRzyfo1TMshso3uQokzmTru6Qcxv
	 7nMLW3BLQxsQnIgHXQNd6tlCGGaZ6pyqpwyU5ZPWMK5O6fM+dOdx0Bcvwft8Mrtqoo
	 JX2kWa4odgHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5847C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165048772.7063.3505409019584935190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe32ebcf3e0e465f0ccd4ec1ea125ab06f27420e41786df6a130806ecee04490
Date: Wed, 21 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671650487

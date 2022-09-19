Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB0C7E4
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72604C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663569053;
	bh=xl1wq5Eb3ve1Ts+DnXwiMCnU0+zao4pCQlABV4XjmPc=;
	h=To:Subject:From:Date:From;
	b=cGpCisDEwyqRZJsRxec3JWT2OUriqemuOAUXynIHKX2l7lOTC9Yk3VSan+YaZPo1m
	 KkmNkf+/puC2TV6q/O2EZnbvrlIIEb9yPbwWciGW7zaq2p9BabBiU396L9hHdL6RME
	 aeboTwpBrXVWIYcgzT+4BbR1SOMtKbVu8K8zhUZ4oyjyX6m29kjQmmFBY2O/YTK6Gg
	 JHcTuCE3XI6d6UXFeFEZm8JxjOG4Iy1Zjj5MPy14D/ZHHUq32ouT6R51edPveW54Ng
	 evje40L10IZ7F91gdUs9s9rgnygspuVKb22GzqMMfwY86SGtapahsWKocA7u4MBNId
	 MzqTQHVzX1xPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E28ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356905335.24159.3899782652324612934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342cd08f250aaecd2d36d970a36a61b28d7c4dc40cdd57a0ea7853744d86c0e4
Date: Mon, 19 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663569053

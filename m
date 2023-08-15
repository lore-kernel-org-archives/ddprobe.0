Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619AC18046
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 21:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36AFC433C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 21:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692134588;
	bh=pZKEOK443ZdXaRx0cXj9+HI3NglXu/pZOr5m9cFqRJc=;
	h=To:Subject:From:Date:From;
	b=bSTEOFPET6AUGOiFTWPQK125AEcd75FIbs7oxum+v3d35Y9Ig/gnEmFT10DyM3TFF
	 Q2st1oBdyMjU3P5nhi2Nx/jYnxkCIcTAhqDZB9XxnxhjhRmZ3FVI+cHBh3WdHUZySK
	 5QBmWJVGbREf87fE40ab0Z/uQqVKHtk5D8HVKdXBbGhA5JxL3LoPPzK0J8RbDMjJjA
	 x72J6wov846lvWqokWUlKSgtlo9VKWs3u6nANGqGnAqJoYUi2VirfNB/8841CKsxsw
	 GH6g8RlUGnHEmASt+HILOd8azPt8+4BW28/X3iJdkr03UXr3iq9MG+ozO1BLMLXpKA
	 EZROqhNU2Q9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3503C0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 21:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169213458872.6001.15519546375262958249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a712256870f22f7de478979ab358de20eb8f51edc671328002ba0d2448f4c35f
Date: Tue, 15 Aug 2023 21:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692134588

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D600328E7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7777FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661711452;
	bh=uPwlpL9nZ2QnMqofz8MbjFgJpFiPeS9Zya9ejTpvVOk=;
	h=To:Subject:From:Date:From;
	b=tl3VCYmvNwZKk3Ngeoj/Z6pa3dNkb/XhlUD0bMp9bctb/pkNvVSWJkj1tiq9bix4C
	 f+Pbxl7ZxzYHbAgeUTPbWClJgR9Tq+JKz9rKCSIIIpgBB/jmD07YBZBu6kgxXGT9eu
	 aHcagPCMy6xbtUWI72V6hQBYwlIdPDVCBgvrZk6cRmobVpw0x+RFQmN0HBMUuVjhn6
	 /yOSv86lLzo0Wxt9QBjIYPT/HPzmkILibfzCuL1qifKdz1HInJc1ML3XxQHCdGbSDA
	 OHlDjUq9qpBSfwF/rzYOLeFaqh2cSQcqmttORVMuD7AyvkSh8b91aYyDDOMQZTHIdU
	 idMHSJ9hrVt8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576EBECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171145233.31182.1701916100183386057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0599d531eef82d666eca65395cb379be9172206426fd210773ae4068fb0e95f0
Date: Sun, 28 Aug 2022 18:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661711452

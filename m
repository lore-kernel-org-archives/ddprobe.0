Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE89C539E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A9EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662547853;
	bh=mNvlB1+D324HtklAmOH2mUjEg4uu0WDzk8ida5VmamE=;
	h=To:Subject:From:Date:From;
	b=H8LmzeNCyrZoU40N5aJgKNr6yGDb3nouc3xStcCdgPa0jMDROB+gx3CaWtK/NDJ+0
	 AgN+d2TvSv8f5Y1ad4l7Add4c4nH1O7da117SmPwC4+GO7vIoAAMNsurRJbLkCgyH2
	 vXTsX/VKz4DxxMC4oppqmYeOVKMHvLHgNfZbkZDIbIYDDUBPyKZpyyoYIELuPnrFS7
	 KhkOcSwfuwY5DhcZUZdZqJ8vfw3WrLteixlOGvXZ1XqC0tZUWAklOSdIoC3AB6PYuX
	 aMdA1d6zqX/pmOyOAt8r/lfjhvqdBYyxuuTqrLpo8qEwCgfzYOBtMOt5whUFe7zo+e
	 FgwkTZa7amizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA1CC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254785331.25875.7842257317269628100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3854222044cb16170cfa73a6b976d9ee1b175e8878b0f485c9521942e31ec3bf
Date: Wed, 07 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662547853

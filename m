Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26A4EA6
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DBEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672238487;
	bh=4yxntKTP8lngv8QTDDRkX1kCKTYO4j6jzigwUKyhZv4=;
	h=To:Subject:From:Date:From;
	b=Lb72HBAm2FSfTay4ZmID3dBOXrBHlwrU8TpX6Jn/j+dwxl665A1Cl3xN5swbeu0Kc
	 YuN9i1vq+CLAEijes1i84wBmiHZESG3jNTa7NdeoE6ZUK+D0yftkavYZxRTU3gHFVS
	 KHUyjWVR4AbLouso/fJFDctR935QWQUdY+hXwIV22OyWq/Zuw9X3zmnQM8gdYnZLfp
	 x4KcSi3rBseIz1KpABHhgsS2eWmFuI5RwL+CFNBKbUwtl5aV3tiZs/AAbeUzUwlJp5
	 VjDo9U7u6zS5f1TATZIhqvOMZamwSspxubu/aRxcHI9Jb/mxo8Zd/lWsPPJTDiz82G
	 rZ9o0oXybdA0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654B3C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167223848740.16476.5516869561489259818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f907bee4291ba00a14af74d301f4c9eb81b6945a30ff50d82ea596714ed739f8
Date: Wed, 28 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672238487

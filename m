Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B542520EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C29C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672647687;
	bh=jcj6rz7owP19PLnfL0nddghcJw/SwZ7Rge84yCoJx6Q=;
	h=To:Subject:From:Date:From;
	b=atQLR4P7+XVROJ2vwnZQjvtt5RFgUiTZi/20bWjwSXgfvSuD6ttuqJ/HEOw3TQ4zP
	 I/aI0hS00FFY21w67yx/6SxjRx47K1LqBA1REP/3GG95/CiMxdpRK9J/58gIC/7hGA
	 YpmtrcqHP3zueuie3lS/18ZvDdI/0dDKyW8Sb/lJARoM71OMqs7WPQzDAHhfIof5L8
	 8nJiuflmWneFqHE8s5PV9DGx6c+wKffEfHq+T08ohkx5tZjeZDfL1lAZiaiT++tJ3t
	 Us3RvWQD/qiZKSz2Un2GiFrCosgcQZQ/3/rxlXL3oA+D3ZM1SZkYYv4Bo0ofSVsCOc
	 +iCFj0GKqcO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3DDC3DA7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264768737.14703.17255753674149123457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e56fd81898915f43c3f609f92724c4e79f9add3675ffc95d186fc04d24d1b4
Date: Mon, 02 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672647687

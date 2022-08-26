Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BF31FAA
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D6ECC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661488252;
	bh=jxqaTCHM7uRENG0cPvEbRllfcb7yQve9yC6aBS9d7cU=;
	h=To:Subject:From:Date:From;
	b=Pyusa5RX4ZkAXYT4/gftmI6e5W/ocDEFv3Bnakp9M9mHZc7Rtycl2cU3QJfIXlCOz
	 rafq3PJNqG4no5GihutxEkMF1IXLpKHAmlgLF8bGcBI49T+l9iyWGw6P9Km8MBVYKJ
	 rd2ve6FN5yDraz2md0FyTt7Bnye1gjoNEzGbykkAsf++4zAX9XbQ2kMdml4BLU+juT
	 qSnuiixD8FS5t+ONfkHLfMaRAeC6arrHQn1vmIiljXbJ/PN6FJ/Rx3J51XcsWQfIzL
	 UiMwvg4JbIWgos/1SxEYko8zaiFDbRJVCbiOI5rblGCUYRCYSZ33Ytk29SlYybQXsE
	 5kRYZoUoyjzqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72485ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 04:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148825244.30963.13362504962422061429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ab0f055958cb156816710445db62a148d7e154c18f5823612532e59d979fd8
Date: Fri, 26 Aug 2022 04:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661488252

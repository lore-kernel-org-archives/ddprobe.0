Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E60748E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F45BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672613487;
	bh=tRU2tF86VRz2ds2WuOgsDH+FslZIhrpUscVsUDKJ274=;
	h=To:Subject:From:Date:From;
	b=p3sXNwCH3777I9qLJVgyN9Jc+jbalhXARd3ktQcJ41dftBklX+K/2Q6WPW2wMi5VK
	 0RvlTEULUBJLglYnYGOoy4UPbzEv6KQR6dGIMXhxJoXbozZNn49WkUVIpp7ofrUnAV
	 EzZkHf/GKdN7X3290N0xzTichAHhVJ2hsZEx7RxcS3Zxo9e6IeCgQB7o25D8UVCcVo
	 LRi6kdW7HRYZ9TWjWHMEKlCG67nEy14J7bZl/1UCHzSk7kuHu49YLeJMGQrC7DxWo6
	 5TY3ZWtJujeNmfRLUYjd/oIo0xXUx3zzXQcopkUOEWBFGlZGdyyR6NIyOpYxn8DiSK
	 OrQIZU1ESRmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F854C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261348743.20493.7771444185451734959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e28ab19d769ac431066db90991434571f4194b1ed98598613e93949f136535a
Date: Sun, 01 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672613487

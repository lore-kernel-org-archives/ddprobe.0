Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6928E20EB
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 05:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CC7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694409248;
	bh=HpkgVDbhhSlmkPo2ehAW3hkbPi4jka2fVTB30XCjmXs=;
	h=To:Subject:From:Date:From;
	b=LOMa9/AbCbosKWnMf66f20kPBYzA+8XCilr30kRyv9dlHwFArFebeNZdOPqm/Ba2L
	 r2WLo6tTvc297Kfhd150x7ehhbaxM8svIFBz5XF8a52VUBXBBQebsOWicicx5WlKqK
	 B1o0dzH8oGt+aCDcR5zVelwum9ZQIW3HazqaKZpYfmefkjgdTdF0e5icDbgMlVs/ul
	 DHgxE0Ds1YCEvQX5zBw2lF2ZM0TDCAyk3oOnxXdKQ9uUEaEYKBvBgAaGgqGKy++7t0
	 WRqVG/JSzHUkpkGLIrnBoIL3zwhQIZ6OjMrr0QkMTHVjFOLRfOSiP5Bvdrh+lOEpeu
	 uoxw2x5DA4hiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C904BEE57DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169440924875.18281.10859506255606763352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715a7b0a2ba8bbda4ce3796b63dc462da16be17d07b6f165e12b0d76629c3206
Date: Mon, 11 Sep 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694409248

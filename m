Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39BC7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3D2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668561654;
	bh=Ok1Ba44RM7zp3Ft9OcEchkvmeJcs6VBYMht0zu8LRNQ=;
	h=To:Subject:From:Date:From;
	b=grEFPHCOrcIzIlzCuE1RPu5JIIEnAUaJ7sX/4LyhMHfBdET+XFohn2je3EYIK06k3
	 RmMXTJw9hUQsgj7IejvngU6YpULbN/y2VxXAxV+IimSksDF9oat6L+uYLXBdzxP5y8
	 d7ejqa7BFovUzq1tH7FqoZfm44fhyk//QB4PiK0gj1/tnaGvobPx+L1Z46TPcwPrOt
	 1YH0zLAJPUYMCkyDmCypHHiZ6Ivyh0692iYYd2MHFHR39f9da5lrOSivTwbfjHoXeC
	 xQj3CXtAeC59JXmnCbAhnMOq5H1Lv4cxJ+PBcK8uhg5Q/OL/NjJhIsXk08Eg18U9jK
	 wfg4pz1KRlsRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B10C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856165433.26701.10575214538686703441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae43cb5e2649ca40506cc41b0a0f8b838d6687422d1b5e25b52103ad2f287cb
Date: Wed, 16 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668561654

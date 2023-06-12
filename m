Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF7E17CE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 03:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF4E1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 03:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686541986;
	bh=XBtXBz8TdalxkhExXhXpi/lRamzVi91T47lrTHWP/sE=;
	h=To:Subject:From:Date:From;
	b=JVVSINL6PjxoLaHDyV1mhwrD/bLsSwztQAcidO5rnPwDeiVXOMb/W+6gkRUYt/rVa
	 XEENjnP+LPp6hYDcENKz11qOAMCJFDPZLfYm9Ny9NL//jXoHOvbjYqLWD8WKixeSbC
	 50PwSR7/gsNrzt1IIrvZD4L/l9UX5c8jI+CVfK9D5cREf4FKueicM8jxfNCewbfbl3
	 zWAxyEPXAph1DVDWvra6rfCuX6xniZNfY+xsYT/lT/d3MGZZ60U7bB+PVba9XjJIOO
	 gcXb6S3/Vzy65lS1087oquc2Bm2WyMuygfLfRC4VcdJhi3IAw46+b3gxzTKKxp5w1b
	 wBW8Qv+4yjABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83F2C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 03:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168654198580.5800.8866712240949144493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105045123c80539f2b757d658cfbc9419f9b7351de82f6e4a79d877f87ba7ef9
Date: Mon, 12 Jun 2023 03:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686541985

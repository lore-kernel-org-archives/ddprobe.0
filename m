Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAE4C2CA
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 16:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9528C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 16:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696092968;
	bh=6dauyjzhFSRMojj3W5IqVu8mIplymWlt2E6aykB3hT0=;
	h=To:Subject:From:Date:From;
	b=YyAh0auuryOotgS1rSnZAOD+xlL/q8lhBSbjzspBu5sayjiRqGC8JOeka0UjA1RsU
	 dbvH2S1OKE9f2dmot8DAnxQ3AUGh/jslL8L6a/Con2BV7jGgsvsQfxX3aOLcJKciGs
	 MWwf01UfBc069ptUq05SopcP4YJGJUlPz3htWot+hpb1IwvbMGhhh3aAbhZrzqWwfu
	 WYBcjTAiEzWHqqVYhPRzqpPMfahy3gX2zQC4mY1SwUTY/NO6+IQMm66vOIgoXDkkrf
	 8LyIu7SK3K7RM0l1KgMd2xPDCzdmIqFBW2INSUaloYniRYuQjXcBS4U3JntGOTBrzu
	 taLjVdMNfibXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FBBE7737A
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 16:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169609296871.25426.2291185424808825032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f32e7ff9fcc638d2d6de7ee7194e7f60c6f7d2b8fe397a4ed694d538bece19b
Date: Sat, 30 Sep 2023 16:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696092968

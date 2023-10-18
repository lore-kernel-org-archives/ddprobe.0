Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7030118E0B
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSQKEc99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA307C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697671692;
	bh=m24Ceh2DHdfXoiEEm9sC0DbHfriyH6hgOc94jrSFYN0=;
	h=To:Subject:From:Date:From;
	b=RSQKEc99qXzpHmTCd2SCvk1WYHi6v4/aYpFCdYmDwearQF+L3A8ByH8A26E17JhET
	 jqioHzGhBZp5zZxg1xaIQ16T3zpbgdOjzeP5+nB0UIF/tOlF6x+lxvF7ACgu2SLEY2
	 Lotj83DhPyjPVsAioC57zTn74K3kZkTPWPrQtw170fKT02tnO+blbwH1U0lPjrR0xU
	 dqZ3Xx/cAqyuBPyMT3YWMcAtGRosrZfUdLkbL+3IOsm+2s2p+S3x+lmmwj53dp5U76
	 Z9znRYpOaKbcqb/tL9NZaq90su5rmTARV/e02Uedv/raZHigB62Hys+JUWh2vr2o8P
	 SB/owtTqZSC0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8C1CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 23:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169767169280.6494.12979933611069122526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df23bfe448fd6cb93dc203b9c51e4566e2a50f9f282e6fe826070e754b7b9776
Date: Wed, 18 Oct 2023 23:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697671692

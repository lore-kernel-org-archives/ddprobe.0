Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD5A646
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A50C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673507487;
	bh=k4MkuQGpwZURjOohUlNd/i4onjKGCyXM9hNOVqTNgEU=;
	h=To:Subject:From:Date:From;
	b=Ia+lLm4DV5BCcdnMHOZ52AowZ11FYFK0IFmhgE7jj+iFbowzFq7C3UAYlKViOTslU
	 arVr1aMcmJ1ryLTcGN792HvNUKvi2NVJAVOhC5O2PKbapmaqjhHyFDAFm7UhAyCVxu
	 cuMZ0BRR8FsOU51aMr2Nuzrx0R4o9QdsdVq1O1cq6/87g1HRXiFMUTr1BuZkBXCJDO
	 84GPJc4CLBYfBTwZuuJFW7UTBNHswx09eblSEA7IhJ2FSUHomOFwtVJH2zRNYpOHqm
	 B6FsaWwPR3XcpeEYecsLaAzWcwEeJU8sXX6iKGJ1wn+cxzTBqrO8YKlINqIAkU+H2g
	 xDCwD4BB6tHiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7B8C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350748738.28282.17829794126546568566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b75c1e1a6436756c1d0fab02dbdfa10c8317d5f8afcff837b0d640d3f5c3cc
Date: Thu, 12 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673507487

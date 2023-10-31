Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808B1D553
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvNkwnJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C3AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698754096;
	bh=DzK2364IcnEyuw5/N9dqxuvRiK/WCHHuAtVAEH4Q93E=;
	h=To:Subject:From:Date:From;
	b=OvNkwnJH4F07hizdkzxb5hePdbGJkTUUUoX330jEXAbZTDjcGvnIlpLzh5xG3JB9p
	 RSD2P2Rntz26IJJPG0DDZwE9OfLPq5FD63ZWyco95w/Ha36NfqVN5NPvW/S8vi9WvD
	 jybqRQmVl2lqJPenoJSVR2cRvF1uJbpYE90X+Bgju1HgF2ZLPrAujByjMIxIEkaLWC
	 0PUy0auIfzsx0REjTR6Fj5RKjki9CissRwKkMDILHVG3G84DjDrqZ5r+4Xuza8AtTW
	 yLlkr6we9ns9dGNKky+DrJMU/kW4Lwqj7eijV1FSKsHpYn7ARPB303gN7CZAvkdQqr
	 eVmtNtRdivngA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64542C4167B
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169875409640.23769.1073307863445307055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85573b0085601505ae274c65d87b3c7e9d2cb88870daa1e4b7cd71c9a0bbccbd
Date: Tue, 31 Oct 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698754096

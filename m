Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20517F1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:12:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE24C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674213125;
	bh=LlXOaSaKOdUiVG+7bQebgDTyqMS6fUD+fkSnrnECYf8=;
	h=To:Subject:From:Date:From;
	b=LsKXEbchDYICowYXYLBxirPl6Iyia7V3sDzI4RWPpulsSHW5nVaatkltdh7M04H1k
	 ewm7tkY/QmDqoCKDGKOzj/uIi5frSbjvgipZB/l732FVvdDF2EfZV3rgGQea7LSPCJ
	 vOY8rD3qvnBMddClCko/levaEXnoCufPC11B9O5CPwdKGR824xK4IE6ExiPrQzqp04
	 S+49S9FIzy1U7sQ7wbIHeKGB8hCAhj4LBqH+X/ly3HK2jZTgW34hcJAzEohdpLZnRE
	 1nnKlxDhi4kvdjidsFep1qEI1A+ofXl4jGGleN9i3JKQRe+mtmFPLDMZ+2upLH5Riw
	 pBTAd99V9SnuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3571C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421312572.6964.4149094582398706086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e421bac5bb5aa6421edd0de2373e5d3baeeaca4cb5b6e4c8bbf909c9727e2d3
Date: Fri, 20 Jan 2023 11:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674213125

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E211C1101
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B70C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672377687;
	bh=1tMX3zZrJ1tSVFjol3LUuntJVKlbM5VnVL1WpuwIkvg=;
	h=To:Subject:From:Date:From;
	b=hW/axszH6BF2eFZuFmiE4fnBsTloQG/79H6T7Rx4Ijkw1CWm7/Qq13AI29Psa71tM
	 ugodW7pPZgk70e8Q/OrcvP8fr1szfjg25of7h+63buMH1Q4oyAsKA5mzAa+B8xDvsq
	 uhXqtrts3FdhsjE3KlLE9zThZlBG5fSLw/kZkSNgDw1cincnl3uEV2gXS8qyFV+MOA
	 9yJY3+qqBBUmGRs+A34somU11vsonaZ9ZI/mSsiH6WDTg01eVtqxIdLrejitBXGxVB
	 PAW/KCnt3UJPBHzmyLEoCdpFCLx9jsE5Wq4bqqdRcJTd/2Jr0JvUH9Nw9Kx3b/WzrG
	 9K5fD2ojdwM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8AEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237768743.7044.8926548067331635360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff493fa497c0c1ef0e019e64194885180aacb6ea653c75bfb090ed295489fed
Date: Fri, 30 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672377687

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007E24403
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9750CC433D7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663274453;
	bh=5IQhI7JQQugY6qA0cDAhLdkazwpIIe5873+pBnF+aS0=;
	h=To:Subject:From:Date:From;
	b=GA8Uvee7JzT+ikw+TSmQ8MYhF5UePAFWckxYxiL+6DiGUoYMgIDfGXj1zTVeFsuis
	 E52r+aVYLgF/r8v49sebSNizQ1IXC+qfA7jkeoS04oLW22W/7dEDF4SK1jPs0e+DFQ
	 qEg32oqar/xpuguontq5uFO5g3cGDfqOJ+Q7JN3k/YyFybYEadah96xtuQ2EwRO1Be
	 Nu/8qY9VzdzrVDGSUQV9HwA4iYbgcpjgyBz2zZ2uTSfdN3Bcn5IbLQeEu7WWmIMpyD
	 AcJW9/xLc63bvyu76fvq4OWADTg9xTHuSXcSwxYAKnZKMcXaS0ihE0etWMZkBsDz8m
	 u1Wcb8gq3+hYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F1A7C32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327445351.28891.8447176407697082048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe3db7ad7d8b5b8a433557b5fc441770a50d88b4825368771dafa7a5c42dac1
Date: Thu, 15 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663274453

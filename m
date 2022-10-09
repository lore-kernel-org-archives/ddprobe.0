Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E077410F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7779DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665291653;
	bh=diNKKfYB2+HOqKegF8GwBuWoVo+oHQraYGemv+bZSAg=;
	h=To:Subject:From:Date:From;
	b=Kbs7NG4mWBtjoe2CZckA7PcTXPkrqjMG8pZDUpIFWtQlkb7qrFyVegFvNhE6BVjVC
	 EJ6ED/nZ0ZGHr+DTtphcuYMeS+SzTvvHkJTe2cdLYs0AG5vpkbsfW++rzTV6W9aes5
	 EhJeHv2SqZkTtAn0FD7zEDgvSom3q7owPMZvUT9jmz6V+yHOUT7yyJsScdB0JTapqy
	 eVxocaOazE8zNpgrKFAt3hv8mgY5HSF7B21z3Xh3ow80B/Gnj4cQM9VJiCHhpIBoCU
	 eh7bcuLRPJOkNjHNSwe8qgH8jTjDqWB8y/5Rg5FxxwxU6i7a+n5JlYSk7R2JcLc6Fb
	 OyUOh5zs7L/jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B8BC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529165333.4787.14368167231886723510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a68a343be9d3c4f02adeaa70495d1c0be698bd552e39154bbea468b09fa706
Date: Sun, 09 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665291653

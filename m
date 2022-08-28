Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A2D182
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 875B5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661661652;
	bh=Ls2ukPPsEcWFphKcxYj/pqNHYRz6TW1xlsfz+R180ng=;
	h=To:Subject:From:Date:From;
	b=Bw9JJWTcdwLjd0ZiKNlhYvPogzNSyCFb/4d2xbz3xrk0QIpsy1k7y+CAOxHdS1WQ6
	 iY6exHYIsHG/B25Rm7stmP/ZoXs6YTtvdQpvoEVOuZtDjW7onteVc7tk2iUZdYnIYZ
	 yQ2GdDTXMRAoV8lonJ3klQYU19WkupATP2y3KdTXSWrbxL9K0hu4MeyOzN77BdaCaU
	 RFJoxF8f1bv7OES89YtN+PhgN0LyzW6p3MN4oSx3pA/i+qP/IWdEAY6nnqlxOYZVvf
	 xd/XydPY8IuD0ZFU0Ldc5FsQnLnYZCcgL/btFM5i/vpR8my5LY6DPBorVW4DLBtJ06
	 6f/SctS5lN3sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FB0ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166165239.4071.17504783182347764456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc3967b79cb18bd81f62d67ab1879bebb1bc5123e69ac27a429f24e13fd2835
Date: Sun, 28 Aug 2022 04:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661661652

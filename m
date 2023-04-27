Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588B9816
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB31C4339B
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682555286;
	bh=LXsjPZ/bVDgf8Vs+HoKx5Q2gRgfhU8prmc1KcF0L/8M=;
	h=To:Subject:From:Date:From;
	b=szz5Ev9z5YzK1eQsDbmOccy93AK61Kkj/Ii1Ils+xsqWMH8aGFVFoM5aFCIkLNcvE
	 SnmeRxbArpD4IhIFKpjFvmgdCFs6ExGexJEPtYz5ELsaGrBPVJf0bE9yTQEvK7j9mx
	 yHgpLWIATAxFiVgqL3d2Vp/iMbWh2h8LhVjAREb/5GfJm/0ZZe9HZVTb6suufiB/HL
	 72fBy3MMlwpd8lszYaTrvbeswOT3ABW33kntpLeEK2XF2e9WFUIsAdL8jH/snHoLDr
	 bZbZ/oM8gO6AfGQJaAtskbSe1ay4UzgBPjHD7ZgoLVOc7LkGdKJEw5OGWJiNGONM9d
	 TSXJZE74MJkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0D4C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168255528582.1469.620637179822739329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30454253546f0e10c51823906fba4a2104a91e3ef210fc6be996035463261766
Date: Thu, 27 Apr 2023 00:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682555285

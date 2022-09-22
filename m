Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77655A90
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D25C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663859453;
	bh=Xw3LG1QVe6Wkv3idzV9XmfYu5YvETwich1PeN4eaPkk=;
	h=To:Subject:From:Date:From;
	b=DHltvSO7SF2jFr4/Ya0jRwAQNXm0z7LtsT+n0bqOdbtqQ+eDmEb2ed2mTzyVhckg0
	 B+I3iQo/uPDhJ5on/JKdsBtsqDNcLK1p70UIkkHAkCCtyR7iF+3/A/sVJKO4Q398XM
	 fncItH5SB2FP+7n504IcQphgu9/KXA61WNOvLrV9XzZyffb0S7ctDu5UT8d4Abve0/
	 k+wrAPzMJ9AvOP/hs219UxFqEhyPpHd0Cv/VjBX7tsEWauPYLnbpDBeeknjUggMLFR
	 M0TWoyF+XdaMP1fZTd5LlH2bnZUI+ut8R89zQYpjmq3uR1dHSti39XsNkJuajvMdeA
	 k8HxGMvwRUANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593ACC54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166385945335.622.4123025016681909780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039db344e5a8e7275fd58fefe8b667f1756b37c965ec9bbe75e33bf3bc894f23
Date: Thu, 22 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663859453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650B017E2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 04:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C8CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 04:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676523545;
	bh=TX34mEHMp7p2MOUS8l+4e6aSHmlENnMEPHN1PYcljw4=;
	h=To:Subject:From:Date:From;
	b=nD8jU0xIzSSOAe/dBHULtdfTkLVV5/Hed8p2+Pz6JpXjCpUsFL/JJorpKi60YjfUN
	 K/WSjD8cGG7UWarllfvfhtoFL34S9pTQADjiROmHM7l+7Lb0L2GMO23I1NvJsnZ5lN
	 z7RZRxSGBEEFmru4UtozB7BE7TZkr33Nk3r4/QSSAOsAwcNNK6BHDQ+IC2eGZmPQxj
	 dwDNjfOgxV5FTd7yFKWGcsT5svTAWG+oWnZNFi5GIfgMFxUYAtlt9JcYMbwGG9ptz6
	 zGokO54enPXuoVoZKvyN+4BMvmUG2XCS6YCL5WBYVEfovq3U+QelR9kiaQXGJIfhRu
	 11EE7ZCA1MZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B55C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 04:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167652354575.8525.16254612000979886615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f14d980787a6f1f5fb3abc448a5bf01a16e22ba4d8abc376b2945c742a7538
Date: Thu, 16 Feb 2023 04:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676523545

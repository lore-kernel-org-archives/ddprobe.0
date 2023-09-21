Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F081802D
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 20:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD312C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 20:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695329708;
	bh=lYBkI1xBij0sHm8rtCc5C4ITrqwWzn9CB5bqxbqmFSE=;
	h=To:Subject:From:Date:From;
	b=WJo/Sl50sB7dVNLB1n0Ahoq1ZUQG40RsMlwDRgiAdHuxEtwpguaqF3gqL8PlIYS98
	 set7Ijdn6KwIGkg70FU2YJRXWo99ReYRBNM/xihuaHO/6RLVjMbxKzFeXzF4qu5hQ1
	 yXm4HN/aftyi2pUhrmyj7QAPXEZUq1szNFgmAVCh9FRD26LoLwLIUuyviIXe6ZiUpc
	 UIzsF9i8peuh+CkET5pjB17+fy0czDAxEu4dSyRNX2ubUb/43HNWJoTFzFvVRs1G//
	 EFkhr3AmRFT4SAxwT35HWLw+5Cuzlvc27Q4HgvYvBEeRNQqcBLZkPGCqZotQ9BIeSx
	 /Ozng7+HX2FEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D42E7D0A2
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 20:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169532970867.1795.5902559692641207026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592b1bacdd59da6470854c65a351e5ff240d1e69c7b7ae73328e45a1701228e5
Date: Thu, 21 Sep 2023 20:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695329708

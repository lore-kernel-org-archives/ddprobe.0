Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247B81DDC8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlRGyMPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ADDBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697829496;
	bh=7Q1J8F8RpmgLaddcADzI6fCsq39s9leqK2xGZcgY21w=;
	h=To:Subject:From:Date:From;
	b=hlRGyMPJsc54yzvTM/ehytxdTnmC7XxjqdnE3fwcvQzn64SxZFl42TrDEsgUTUti2
	 u+MmJNsd+ifdT5qDgVr6gNZo/o9le1viYspWx8hberNR7Ys+L2yWLTXVqLj4WDUVS5
	 JJkEckymksZCOKT7PCxYBZkf5Z03G+rD//BkheeCbWcfngrISpRIWmVhI6t5tqry2k
	 uwJRFutcsipma8nm/ZQEe8B+ZvN/i0a9IzAqM6KHBB19ftHChXIRNVRpcLV+Zc+gfX
	 hezTRGwXwDY4oQ67cIM3LDeh28Eyw/r0BToSqNr6s8wEbmlKlrrsvxJShJltZg457I
	 ec/6oseVMu7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64461C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169782949640.15424.10351484028482275170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eaf1a2b52413865755c3e998657dc777f0d64e2edd781006bd11edcf2f7c85e
Date: Fri, 20 Oct 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697829496

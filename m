Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1181C2E
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73886C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661460052;
	bh=mF1Nu3Izs4ZBdeIZBpJzl8bcL58+mDgk3rv8K4zl8hw=;
	h=To:Subject:From:Date:From;
	b=P/XzpzV03zOgbEwpVa0VjwCjnQSl0ZOsGyIWC3OyIEyZyKV9Br4Ex0aaFGXmHz9Wh
	 Hl1E8QjiApzL7YsPJai4B9BOZMGzviGyQ2NuNJn6NKe/WtwLM7G978BnwbZ1Stx6bs
	 aTAZIS8nE1CMxNUzrPb22L9BncNuOvRsQDfSf8GKcOK08OeP4KLuYk5DLuHKiClJGj
	 RtOzn0T0JkIiza4YMghGJvkKriQOiqG46wFU/CJXSyS0SzTx/sLVfEUjv77BPjQcy4
	 ArHgt8f1AOAPnD+gva6jbfzw7YDD1Te8oh8HYK0I1TPCZbQc6zgPaX0Gy+nN2QIFsB
	 zu/VMJmRfhstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57918ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146005234.3703.10062634799460127946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3127c445c156b698a63361e3c5da7b3baa4729c66f481772c1af572f93ffa7df
Date: Thu, 25 Aug 2022 20:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661460052

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81F43207
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAF6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665418253;
	bh=AFrePc/Bj55KVc2pd8oPeZTzfrLHSCpYlKv1TZHWYz8=;
	h=To:Subject:From:Date:From;
	b=G3XI+d5UIyBIE+CGp0riyakHYJNuGrVPg6RNWWd6SC/W+eJaTVEpUPK0BZRg2Ig9m
	 F95F2MOEsfjqeM4PPqhgwtLkCs3cqUYRt3Me0ijyJyf9GJ4hZ/dK99U4VAasntrbfB
	 wbNKddyDkedxgIptgATMYBmLrpqUjf7nRxoOMqKVZJrCMvtVHAk8kEbOln0roiWUjg
	 GZ+5TbG4+WKUnT1GsGTE79QM+6IyRajyRqwabTRsXiJeOTurcYB+YlkKu9pozODAjd
	 7K++zMB98+dO/530657IPgHcoU904NF7h08xVfCkd70aS7LYgYwTZqgISIrawBtCD9
	 tv9n0A0S2dN7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512C1C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541825332.26252.15250385381121648495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04058d8adca351b227b3138d28f66f6cd17a99cd970a1234b831485f617e0ed7
Date: Mon, 10 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665418253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D802D533
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 20:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F54C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 20:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686862148;
	bh=+PXE31uaf2mSnirCJ5pPxh7j1I06yxVRn+kUWNYPvE4=;
	h=To:Subject:From:Date:From;
	b=RH3rLEZpDMkitWkxY2E7XVNPdxSl5guqxRZDbJXQqJij+h2a8G6uwX4b1VBlcIoeq
	 3VzbeX4iDqG5h+hrBqnMI/HUq8BcGvLsRbHY79Ml2Xc2XEvqtv9lkZFD1WUKdS5raT
	 o1SMluhZUG2ArQUkXnFv5GxtjRpPC77+McMOT2ifAu9Gm35+YOhyEnRAr6zo/31Z96
	 iE80YnWn9z52DcPjIxWmYNvzJL2JqdtR8MCbauh99DWhqRKKH/zTgzt8Uc5rnYRCwa
	 9mnli7VgIxgvy1J/eZxUp2yMdvBtE0kAEpPtyt54yqAfpFcIlyu76JYyne2f4/SrhQ
	 DojJmXkhBjkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17CFEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 20:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168686214871.17475.7949306455981321271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c803ff54c5046cc4f3e5cdd20d62b55bdd7ba0ffc39a722e5b9ff32540cd34a5
Date: Thu, 15 Jun 2023 20:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686862148

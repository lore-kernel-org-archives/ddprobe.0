Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AB67F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709F9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662919253;
	bh=O6uBk+8uReuRDBl+amRAPaMCxbrE/gIa7L0QMdSnscE=;
	h=To:Subject:From:Date:From;
	b=GlEyjJmerETCkcDbnJQbezhJTjVNGOmflFxxBk7lvWg4zP9fUcMR4A5VZM6Ni7mN0
	 HotASHiFY84vXUW1PWJnCqLExzLRW7rKEwNpnBNp0DWTc+u5CnqC7MBu6DzDGXixnl
	 jAXVzYFMCa6cVdNYqi4PQPrMqhwhsLsPMSQPh+KahPQz8DrkLMen2hI71lr4SLtFeq
	 UAdMrE1iqarleJISYmBRmcJgIlArPo6A1Ni0ovr2jeHhnTPgw+1zXNG3ovXeKDZ7Ab
	 Nnst37hdK1gl9l12rlEBOi6KFrIKQ2ich2ZDw1AbwNV7bvmik1gjS78Xt0eSWmIMfI
	 C75xueT1Ywc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E447C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291925331.513.16445415017643502930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08a531b5d7d63b6e0bda2d3cdfc18db94a9a30f302d66a0e43b137d6807ef2c
Date: Sun, 11 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662919253

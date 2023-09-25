Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B431BDEC
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 16:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66CCC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 16:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695657908;
	bh=W1jnu2beMbMxPOkdvqopWxBLj93hrK7YmOcLPqUl6iM=;
	h=To:Subject:From:Date:From;
	b=WeXHwXb5R3YDBDHpDbqcu2ggaXDwYXFPD7znkr4eywaYrZ7q7aZNsE18JG5S6ntBQ
	 ihN+w1ts/yC3qRexK2F9pI4y2iurFGAN1NaZTVBDF7+eqWEFiN+yEpatCnJWGbjEsc
	 bc31spwYpOIOuqHnycJF+zm1PZRe7dmpFG8wWsG2FUdLKQzReYWfzqEBOSt66VPZhx
	 st+TjWSeyNlugcVwbzC/pt5ZjnAlyUs67VwanmKDdFYLAhxXAWHrpw58M7yhlt22cG
	 qcsJYMwzz/t//T1nnSsGHEB455cV5gSOWCPZH+7fGxSnvhLsZABhgK7Vo94fZrPmD8
	 cMJqrdSDewEKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEC7CE7A98
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 16:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169565790876.3538.8337176006628584462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749321201310e9bc309ad306ceb5a8f7ffe0813f6e91afa628636ffc2a9af61b
Date: Mon, 25 Sep 2023 16:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695657908

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC15C4C78
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6759FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668433254;
	bh=tJLUzsCIXRWshjeFgVmbdvVUPVUsseC4d2ZAOG1HFTI=;
	h=To:Subject:From:Date:From;
	b=VMFYNupKGtfbz8MnduO1RGif0Xrn6NnWslkzpD5rXdvirgQgu2cy4TSPrYXomwhDF
	 yLrLxZ/Nn1n/9EeWAPSMlxb4Tjngnrp2IvwYi1iEDeCnHXNdFYEJHWQ6W9i6emmL4/
	 tj2XiIRmgxQ3ysr28kfzi5E6eh5zvz5wwiU92Ewmb6AABwOvX/2KwYGuAkTdyVOg4O
	 7X1TQkesmrYs/fwDGHXaw6nyJ5y6mDMKeRgQPEEvYbdQeKn0JVnCOrGMNjbOCdMcDV
	 9QBHChwFF+GY4yJKKBjiasbLM1HUP7/p2Q7eg0yHPOTqQgr31iayJGep7HJT2RXxZD
	 IaqvGMbSV8Osg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDF1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843325432.23940.862345850402752571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea708e527466150e2bb30bcde79807892527f47ea34620c57f621396d4d87b5
Date: Mon, 14 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668433254

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190E47E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 15:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651935778;
	h=To:Subject:From:Message-Id:Date;
	bh=/cVRx89ao8eLzKVtcCTz4I+M2VPvklIyZv6//pOoiME=;
	b=CcpA/sxeBGI5jpqYap1JV65csKhscj4r2h4viNhuW/VFvBeXPfOlZ/SwjGMVXiJQ
	qWKz4+sownn8Ido94R03XlXnLhpioqkDEuKpUo/syk6ks90BC3tQAS7dz52FB84o4yx
	/T+N5E4gNFQWJgICo9DhskRG8lxG497OeX1k1szI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651935778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/cVRx89ao8eLzKVtcCTz4I+M2VPvklIyZv6//pOoiME=;
	b=Ga2E0xgDlPQz8sPoYc22H1O3kei+ZJlmk5dzFOj2JsjvccCoUSPd7fFL25k5nS3m
	RPbUGccJX+BwjnEC2GSB4hNGM9wkqqpwxW5PTRh4BiWRszcEL3qKDqn5ooZxDh+uJro
	ZwP2lMsvLjCKcTxr0Mn/CGkJjRB1cPcl/lTmLB50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809f0b95bd-1c9783e5-d9e1-4afb-b526-052656cfaa43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07bdcf359b74243133d7ca0991cb88b67b0f5e25830a025bedf0c08c97c4c4ca
Date: Sat, 7 May 2022 15:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651935778

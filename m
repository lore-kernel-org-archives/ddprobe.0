Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21454296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647094584;
	h=To:Subject:From:Message-Id:Date;
	bh=vU89dBZSDpASZ7OhXb1bvgB/gHiXiKtajpcxkuyCdhc=;
	b=Bus5njsos79D4lT9G3+0g8USExMOEmva5auwdzzJ8O5cRh6dq66SofQ0GfzDiFvt
	n7lUcHpoD6RXiSEmtgWuTDWfNXhe2TMAJ0ziVQmFjR8Z/f8Erz6lJ0p1L+5hM+gHsa/
	phuQDdFD2a4Ah5XtfyDgJPs25P006jVzw62+Cpjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647094584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vU89dBZSDpASZ7OhXb1bvgB/gHiXiKtajpcxkuyCdhc=;
	b=RvuE7IwfccYol+8sjqfEyeNL5TZy+5e5rYNoYKvKB/f0h1vj7yKxLzM6P3CMtKCx
	+FzKfH0+os9ILGb0Wsj6Qivlu48cvgZIvq2fHyqrM+xp7eSjrRmEZzRa1VX/DQJVPwK
	eakXJ7SMGsOJyeIAVKJXRo98FEeZgWIvzjQ36y5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e7cd58b-d1648f3f-d1fb-44fa-91cc-54fd0afc358a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c3d197479f99f6da5518b077c325b46dc628a1918c4c2e98e1c7b4121a30ca0
Date: Sat, 12 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647094584

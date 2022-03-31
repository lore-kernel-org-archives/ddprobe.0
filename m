Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6560C7C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 03:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648696918;
	h=To:Subject:From:Message-Id:Date;
	bh=l1rQv5327Xzcj/vgP4H1pC5FXee4lFVWWivRZiOeXLY=;
	b=Snlob2e4aC0ct7wH0XP0rdri7AfZfUg8lcfNFQ9+MmFSBGm2bp+6Exobok4m1NNd
	IZsVscznuaBKSM7CDRVmRETloQX6ADBTVg76vuFV9+zbs0QnBUUpy9QYjlfHYVchAM0
	bN0b9BXGnuOXkIDvJjqmIYOq9zSvfK29ZwqrNFDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648696918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l1rQv5327Xzcj/vgP4H1pC5FXee4lFVWWivRZiOeXLY=;
	b=JSrsUgCv1mIDgo1w36t0Us3wEp/bQgnzqbeJXrnYlT24q61qHvtxdRxHEpFys5J0
	3rMND/RVvbhQJb1XaY+gy6/HSmNOrUyrxD6K9QqBTbje2f6YUPvXXi8WeSoA7uzNY+V
	rYRCrc3qSul/pf57vvnBzcjaICJEXtDlm1qpILBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fddfe8119-c6792a36-e20c-434f-8ce6-5d531ad3fa8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34a78736fa90d33e14dbbe8aa09e68527494e8abc48815558feff00bbbb81f39
Date: Thu, 31 Mar 2022 03:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648696918

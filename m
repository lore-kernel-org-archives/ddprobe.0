Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19357C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 07:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650698158;
	h=To:Subject:From:Message-Id:Date;
	bh=Fk6TW/4Ll4lqEab+5+Us7FHQefyub59XalE+sl5dUtE=;
	b=lkJl+keoiCsUoZUHfel3h/Mw19jLw+sPTrwaoTpwx0HZkExEIASAelrtKUc2MiEn
	lBgaHACAdn7pdNGc3xZNHaloB56vuof5RDVYZtrzR09kDbDuY/pPLeGPuSjMKCpTG6m
	ITpUpxWPDhNLk3L2hLBQGPq34yiLvgqT7XHh/ANg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650698158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fk6TW/4Ll4lqEab+5+Us7FHQefyub59XalE+sl5dUtE=;
	b=eFm6PWHsslkeasjDZD0qWJXccnxB24AT45Xhzg8IuzxBtWQ7/Xc7vSILJ9sL7odo
	WuTfHfMEuYxr8Z8lt5Cc0xaLrHtHMgN1yEmV5Lgxz7E+E/gwtSsstgBhLUlzEIbViA2
	BHCYwMqiSSDjWdLMUCG+WRWSeuBot4wifDKJ4BIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180554700f7-19fc56af-8961-47dc-bf98-6b525c7f0ae5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 920c31951a2c68e7aca67b500f74968a04a479f5c9e4140dd22cc5964a7e38a9
Date: Sat, 23 Apr 2022 07:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650698158

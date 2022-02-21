Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800BB2568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645438284;
	h=To:Subject:From:Message-Id:Date;
	bh=2txREDv80PuIyUsogXaHcVMaJdDdjnq1lrPwcZtIsJQ=;
	b=AXCh6sL2zbR1QYZpAefOR0+TmxqEmE5x/KeV0QQ90Qc2ari/7tkJ+bkK+ApuEuFd
	hcbwibwO6q+E2ytsB2qxrbZsc84HL4tWVjDvcYTzW6mvYU71Rf7J0axR7btd5Mci9DS
	AZUr+oRwRhi+DAHJ9zR0hqkncg2UBYwYTUE4Hon8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645438284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2txREDv80PuIyUsogXaHcVMaJdDdjnq1lrPwcZtIsJQ=;
	b=JQ3g24pPk4Tj3H04NKJTK4EgVJo5zK96S1QQURZ1BByc10kxlHKxAN4rAptU356c
	n6RRE7klYXX9b5FcUiPJykfhs2sws/+8ZPSvZ9madQm22r+aZGu9bBuVLQBJhgWpRil
	akxfAWylKv9u49F8n1zrpk7ILzbeWMf5mYTIiGPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bc3b3cb-bc408105-e21a-435f-962f-d9291434d61b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4912a1cffd016672f7d50d372c91bd2901e58e95ed1114493aab8a57d2d87766
Date: Mon, 21 Feb 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645438284

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D3C10E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 06:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651213318;
	h=To:Subject:From:Message-Id:Date;
	bh=GryK6ay5uSiXUTIMwR7gQ0MQIx2JB1QJsm3mBhoqOM4=;
	b=Ws/dZndjYbI56BD5JIQi46AnHiIPgQfLxToXJ9tEThNKxWSQ5BGz78abzNBtJGel
	W2YGuMr0uTmQbDOJuGDV5y0ljGUht4kYJpurm2uY6Q7PvxvZZXR5DRHJbTDqYMcDlzF
	eiiQUtJT3DH38XlMkK42kKNfK4HsOPeY5Rvc938A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651213318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GryK6ay5uSiXUTIMwR7gQ0MQIx2JB1QJsm3mBhoqOM4=;
	b=AP8gkMkRJ5IS7bty8BnSrnbyiwUAkmCM2jjVivD1Hh17hHeTP79aebeuhjgyRf0e
	n+ouq5CmVQKaptj59SJhqc/GnKjdBnyUrmTeoa+TjUeOHhV0ghD599tdHarajEIOFqC
	mGftp7RXiFxHqK6pSdUlastJFLD+tutQbjlGuy+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073fbb8cf-ef31a7d7-730b-4422-aafc-a2864886fb0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36f7984585af5be05d3bd96def3988ae738aa5959228394462288b706d291256
Date: Fri, 29 Apr 2022 06:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651213318

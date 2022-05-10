Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2011B28E1
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652184299;
	h=To:Subject:From:Message-Id:Date;
	bh=gSWNhdKjJ9FnoyZBynT5Z00aacySOe4wkrAUmgK8RgI=;
	b=D/uI1Khr7pzAIGv9gzTBlgZqWQrRSjOch1G2o1NB7gFVAZb6X7joQBPyrDf5l1Zo
	SQeR49YxvXlKyALXEd497Aqc04S3m2ljTLUGcHBI7isFkv2Buu1oZx+MHTEvS5IgV8c
	/4nW5t1ZfRAz9gQD+HglPS+yh2vpDwt+YQwoGXTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652184299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gSWNhdKjJ9FnoyZBynT5Z00aacySOe4wkrAUmgK8RgI=;
	b=WmB9cpaqBZGBt5O28PNXwohChU/c4VXwO1OyBjEJAJL2ZVvN7vPWOZVgZdac0h6A
	m1ZCu/sOUUPtBxX8odkgwZR4haKTqRMY5N/XOlDEttgwZWeL1fEb/uo80lvfdet/01i
	YdrSRFz2g8HaG55g+83t3y9GQY+NXo0zdU3lHt80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180addbb6d4-82558cf9-adc7-4765-904a-0383dde53d7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e2d5c47638de6b5ae0971a07f45a71b7d14d9afd502146c62126ae6fc814863
Date: Tue, 10 May 2022 12:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652184299

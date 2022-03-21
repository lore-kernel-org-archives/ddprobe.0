Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9071057D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647878485;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9rLNykarYSRfCjtorBbHECWysJdehSoukbLxEMB7XU=;
	b=RuqgwxQVxCe0GZYP/cUZtZUbY8t4iQ2D7kh5vlvlbWXi3CuEDe76eA2DdumYXxXH
	htmhx21GJrbAv3y892TAQnhtnrnISb/VamJ19MIZYrSz6PPHg7carww2tfuMXy/C3SR
	CbUIcwBZ37EWpHt42/KgSXPSNdABbraHA8QuV928=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647878485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9rLNykarYSRfCjtorBbHECWysJdehSoukbLxEMB7XU=;
	b=a4U5nB6qRIdPWSbf9Ar/EGRxyr8knNFnM1zXRv/8XlLtLPH0bYdI1kMLok3EV5it
	XrcGY4KBz1xv3ZpJqTDFRqU8bbotdJ5ZT457S3YHcDq1q0ZUFEgPO0+BNLnkPVhYHdR
	Ou6MrodkQZKzVSiXrez0URUAlHh40tmMhgszpe48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad363329-5a926fa4-2f76-4dc7-a2e9-3a272e63ace5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0be2f2ad24dc687f1b190648ea05b1efe745eb05eaea0ff00488eeb638ae7d23
Date: Mon, 21 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647878484

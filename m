Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FAC7F
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 07:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651477558;
	h=To:Subject:From:Message-Id:Date;
	bh=fiRafjjpIxIS8p/SNvXVV/y7YSMOMC9fDM67IseEHEo=;
	b=Uw25/4tBGjwH3rE1bn/Ibeb1NSCnnpj/k/idSgiw9hs8N6xekMemxhxpqVNntUsm
	fRzUyoRmrZvZdENQNo2MjPSzAov0PzBQyfhZjjbzphNQic1rktE2gyqBtSiBwMNyHO9
	hmZoky77ZLmBIEWyyulNclk7dfbKB9OfgRSYyuEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651477558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fiRafjjpIxIS8p/SNvXVV/y7YSMOMC9fDM67IseEHEo=;
	b=BsJuD99MhkC1Ub5WRoeqt3zAd9X2Eu3+qfeLCwkyVoEvIFAACC0p5YsMrzJzSTHk
	mCKCduF41tZef9Ui+vY0nInGcA7S8v7CO6+IG01mgIfoll5kc1VyfJpK8CBHlqX8S1N
	I6XknngrziePblsHUljiRvp1QUc4pXNx5slx6yRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083bbb3eb-7ed16120-0742-4604-a900-b16c3285a6a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06ddaee34a43756057dc6be0aa30355d0d952f28f0f0ce53c0800b56bf56b91f
Date: Mon, 2 May 2022 07:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651477558

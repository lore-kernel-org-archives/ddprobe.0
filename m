Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D0F7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648000285;
	h=To:Subject:From:Message-Id:Date;
	bh=A7ZGrmfjsdApkcP0N1EYRVDTffU2ajHuJfS0CPS7bcY=;
	b=BMxFOM3VE5Tz9zDEajnMJT8wzhC2TFI6bzslxqpjmR66wPzRNKoI5v4D8Ynbpr1E
	uDSeMbyDD2ReI2Eoy6exUIgw3k6OZa7ZT2wRa8I/4787iD6KPtDoTnhFWjr7E+GvLWe
	B6Q1gEB5/+M/3PP+Iw6HvJcf0X6PMb7fuzQ9QYaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648000285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A7ZGrmfjsdApkcP0N1EYRVDTffU2ajHuJfS0CPS7bcY=;
	b=W88dFTKnmt4FMXs360VCvB2yGMaHSBb8cj3g+WZpF6Vb/U3yEYA48Mmj+L8AAzzi
	rDuB2VdMmiGmhtK+DO3//j2OZjn8ON+imAFv84eaoi6XDGxf7NEqcCEbYBaVzp60a8Y
	uoAae6Vcd6ZVxnRXnKuB7klgGMdHsdwvf2WDAfQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb478b856-4b01f956-f2d6-4b6b-918f-62d3939b1312-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1006185a80d47827d11397f2c62bc3f0007fdc80a5e768adf95ec50e8bef45e
Date: Wed, 23 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648000284

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0D81FA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 22:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651357858;
	h=To:Subject:From:Message-Id:Date;
	bh=gvsU7Pqq+5lviTk0Fifh/GuSNz1ic7l+J6Pt+xOgJUo=;
	b=kIlve3j8cdm7EZYBAQqrEeMKjRheAlzZmxuQn8arodzBXn9X8cvCknvrae6E2kAd
	bFO3+whS0OIZcxuFDfWwOgXT9U5HKPXR2DBjryTZp3uZIVpvAUblS3F3Jzvof3wReoO
	ibSVwt2tbeNmgVzUsNHuGwbE/m5bvybLzGh2ft0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651357858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvsU7Pqq+5lviTk0Fifh/GuSNz1ic7l+J6Pt+xOgJUo=;
	b=G5lw6usx7drnoVKTlL1kMgD2qGErjnILq5jMGL/OzlrZCtD0cOyqfR1d/yoPxnH6
	aXJpjud+dXDmiRZh4AKFOxh7Ln92QtkGdaXoIR1KiBTPtzteT0/lhd0DwdwoCq5DV0u
	c+JoXAUxS5qk/5Lt0JyFs46fnWuQzHpZgRYXqXic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c993a5d-dac6ba6a-dae0-4156-b1a0-2a071ceb1442-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b75aec8ccac038aed1ac603fd65eeec82551d1729545fdd1a385173fb5c4cf75
Date: Sat, 30 Apr 2022 22:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651357858

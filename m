Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC3E20E3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 03:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654744499;
	h=To:Subject:From:Message-Id:Date;
	bh=OxFWCfHnC/JftlkqFFDJn0rYuLybhdUOtUh9heSOvpc=;
	b=gMMSe8vtrhfbuCjyovirnNS9SVUYYK05x1B7JjZoukgdg/9l0fkE/5XyB0hIGMpV
	DowZzU/hlz4z4734d3M2mFuGy00JRMkhqCnxxMRnY4uhU8AHTGlfZsoa2DpztQ5t62S
	UcNOttFEi+ABtlxujzvSbMNNLquEzFBOfgBPpLK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654744499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OxFWCfHnC/JftlkqFFDJn0rYuLybhdUOtUh9heSOvpc=;
	b=XuNTPAklrtx6aMwhrccrhux8j7lFRnMRS7jE6WkLAgMEDiEWTVxCyZ2rIUzsHN5a
	QH1wvqJTjzq29welztO7skskWBvHlDsO0TFhatqAzM9XX+xVvsxFzfbwN8YC5xHaZmD
	VUHNVM6LiTAfhwG/j95V4kF7A3z2nLw7IaWLDCDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814675443e-ba0e5fd5-078a-4478-b255-9f03b68fc1e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fa725a936b1d824213298a3ddc7df98f51789f5c4f2ed250be44c6572e8f633
Date: Thu, 9 Jun 2022 03:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654744499

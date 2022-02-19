Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456275124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645258885;
	h=To:Subject:From:Message-Id:Date;
	bh=vGvX3RIMTiOEUZg8KTKsIewzL5z7aQdvsmIpUYeTa2k=;
	b=GIWh9tIUbdkXjzjKTGpN9EnMpz6lD2ToDzZjlq+Z6Rt75EgS5sDyMMjWiW5CERox
	LqBWVxq/Zgs21bF1l3yRoDBHZE5uUmruiQXFNzl2AUjHa3hwyMuze7qAP5pzw28V9R8
	eZIkAqq/uSkcilmszr0VuvzlsFK0VAfPWT0+jN44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645258885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vGvX3RIMTiOEUZg8KTKsIewzL5z7aQdvsmIpUYeTa2k=;
	b=ZnM8UNd4+hCSUAxDFM7RfPaIvTL/Swww77WW5mK1DU5NP3bvsHOa7+7/isF7R+j1
	g57qX79HvAameglyTmzskZMr8hB7renm8BGaWhWzi0VX98zQb2A3w4riAfpL3Uo5Qz5
	QSlNeQZHCJtR4TDMViEbQEi8qHzTpRPIJp/VzGW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f111246f6-ec9b2027-f0d5-4201-bc83-757f31aa6c7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be959bc699d87738fd26420b98f143ef72fe0681bdf7cff0a957395d7d8f13c7
Date: Sat, 19 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645258884

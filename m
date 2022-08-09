Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9D14685
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660074052;
	h=To:Subject:From:Message-Id:Date;
	bh=ffawuLw7eo/V9224qZLb0NIOpTTRMXfXibM2z/7Do74=;
	b=UDZXFhmMkOTh+MUdZTDsDtKWA0m9rgJex549DXOLBqJ3Zx80XBLCu0jGDVgQY0VK
	+S1Jxi+OdAndwOsTjw7rSwVQmR2LA3Xmw2eaN44gic310zHsyBztd8np3fgnWW8Z6j4
	2KE5kmeOPC6WtTUprEnj3FqLjFcN2F0b1snSMifQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660074052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ffawuLw7eo/V9224qZLb0NIOpTTRMXfXibM2z/7Do74=;
	b=Wy9IvG8gv0NOEt0JOsuIe9sFoZwhTDMJX/6JR2rLkB83fVzKfu7BIXCfSiZecjd6
	B7LVan/i30WgE9JLbugKhmz6SFkxBWmrzcZWaHsAXkOzm3Q+rAnjqzvlEfZSfNR6+ve
	hraT7BJhJTsg16UoT69Lh41Nd4FCEBJ0VEbZNCM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182841fcc02-65cb2eb9-f5b9-4b9a-92a7-b52537c602a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ba044548b5abc2a66bb6096f22cd15197e9edfdaed414122d4f8592c56fafab
Date: Tue, 9 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660074052

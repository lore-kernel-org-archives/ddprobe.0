Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D244378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647529285;
	h=To:Subject:From:Message-Id:Date;
	bh=CWymztHOhOlATndxngSEH3cXORa3GGPaV3tRveOMNLw=;
	b=SSjMbOosvafXhWITPBNRWlFMj5AaNEyyu/1UyUCZ7nSRp4OGG/I8g2NpJKDxtv2o
	WjBDVvpGCvj1XiYt/+A6qC5qb1ePun4kPveltaFFxmOfpEbEPDJ9D75t2e/PRWYnHCB
	OGiWJ87iJndIzi/lBQIeEGqxuYfLA/IgyK/dy2os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647529285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CWymztHOhOlATndxngSEH3cXORa3GGPaV3tRveOMNLw=;
	b=G6Fga2JjPNrQL6Mlxx9qvgfkQpZ5kT6sVkzG9JJt/HuwVpE3BzjgbJAGwhP6bKII
	wHtM2f5xrAQgrNZ/P9cflzOkFMXBYO0KnFg6XgXHrxsj/yPiqDVMxgR5PHxK3VabIM3
	Xbnd0tWO2Yj2ERvKRXVvC5Q8wrTkS+tMsJIjMA3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9865d49f-f36d9501-bf5e-4ecf-9a12-71e63b188a5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64b62dfd0267a4ee0a25fd6aaa53291e338b06c1888ced9084b15cb1629e90a3
Date: Thu, 17 Mar 2022 15:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647529284

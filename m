Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3921B5C93
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659260452;
	h=To:Subject:From:Message-Id:Date;
	bh=EEoB9U47dQzOu06ypEGTQ+gXS4L30V1+Y2ZZl1yYIlE=;
	b=afHtRKwg/ib2ptZCzPp7iEaY57+8pyJzLNxSI6MpdHOPZltAt8mrpYYvMsWjuz/R
	A5F9+TDRdrItOR9/wNs4ozUyLSUjNeQLSN5t+mRG3QLsNH9s0XqIYWx5m5NVPsED84a
	BuO9KqdEY/K05DkY+Mqgt71d1zlHandxcvjwf1ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659260452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EEoB9U47dQzOu06ypEGTQ+gXS4L30V1+Y2ZZl1yYIlE=;
	b=CmYv+Qx7WRbBOU8fVyx//D93Ti9VRMWk1S8unerZiGb//gwtFg5mz3Ek7X9EfYpv
	t4vgNfejvESDsdPbToaDBuEnDzh9PPdmA1hxeKkYU3Q1W+Qt0ozVCn5odekEa5KJ4wv
	Y2D0LUux0YTI5FNj5gu1zGJl+1lGrFAsPxCk7AqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253a13ea0-bce9bfc8-b3e6-46be-8921-a76839278ab0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33177f76806f8ca196e7e11972ab2c62bfed26fb4b22d11ee688ac9dede30b12
Date: Sun, 31 Jul 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659260452

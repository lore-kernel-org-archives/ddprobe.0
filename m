Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32E66946
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645573885;
	h=To:Subject:From:Message-Id:Date;
	bh=2+rt5X6OXFw3gkWwnQmaHhquYsOUrhgHAp8YpPhKfBY=;
	b=dYzrMHH856M5JpuEPsdi7VfUO7AP5z30yXtn9tgGETcHfQjos6todrd0XJqDkJrB
	0TVy2XXcgM6Rwx4l6yv3ELh2ArwYf16Z/yUepb1Dv0+Qpw62cxRn0HYAbjBIhc63R56
	Lhg8arWg0dTKLh0HjK0WhaAFtkfJP3TO+ZZExUXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645573885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2+rt5X6OXFw3gkWwnQmaHhquYsOUrhgHAp8YpPhKfBY=;
	b=XcVo5ZVHhmxUOGQUJOt5cBQpjvgyn7enMW6glYXyt23S8xwrX8LXrtnt6Xc1hsEe
	sF8LngD/kgQ2I2PVNkDpYNYlB+ullNvRgqFwA4AVGjcp9lXXssvYypMy0L/eqEZib5N
	QmiHNdJRQloMQgZOIb1UUO0lclfKVxEMsrNJ4jO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23d8cbd0-30518a75-a6c0-4ad5-a30b-d22944f17dfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40fbc18076d789e2bbe28d4c8bbd21ec2e0237947c93f681c283c5068f6ff121
Date: Tue, 22 Feb 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645573884

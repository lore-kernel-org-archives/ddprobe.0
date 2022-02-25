Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86837C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645802485;
	h=To:Subject:From:Message-Id:Date;
	bh=EV+B3Owx4P7CceBSOmzMq9BCDLM01TG0wlIplmfCLw8=;
	b=lmW+jupqdZSBlz8pfbY6nkvB02r0UuOZChQbkSTadSeKmNO9K5ctBlUQaRhpHtvb
	F9ZUyxn9q9zgclsqzqEOTXNzPcJUJlkvOlIgnmBRe4kqm5L8A5Qy/qasH08CAIOZRdW
	D/R1oR7AIwH/3TBjv2tuCI8qhOqKQ/+bkDUmFZsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645802485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EV+B3Owx4P7CceBSOmzMq9BCDLM01TG0wlIplmfCLw8=;
	b=Y/ag+2R9m+BYTzk99oSRrOVbhMWCxq6OArZdRdN6/NPc9rfpY3qmvin6Ba5Hyg/B
	QQbz0VvPIebsIiuxhllOjU8nnHH/C76Z/4gtUEYn0lkgklmcLqjC9J+r4jBmT3H+3r4
	ze4+lEhnoNEZkp80OwmR1MidJkd2IB37F9KwkphQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3178f419-5e16266e-5d03-422c-8f6e-a25493312f03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfc3ac1910a4bda5a08ac03caa36d07737e5d649dedb15dcd522f9d2430655b8
Date: Fri, 25 Feb 2022 15:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645802484

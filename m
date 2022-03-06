Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6628E7A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646535684;
	h=To:Subject:From:Message-Id:Date;
	bh=fPpedbnlMPSkRDqpwxYZOZ72lc5PNxsYCbcls2oK2/A=;
	b=IcqYKSgSqvWA7j5eCHHefoKI37RFcz2IE5in3Gpnl8rOARQ32byDqvSM6hAn71rO
	Ls5mRzuqfvdeLR803ZZ9wQd/auAZuF+aa7Z7TsoZP9RW1u7JnalBrG1oiHS31ojlxRk
	4w0Lkf+JCALCaLIUThfm5BDqrmCpwL6XDkAWAKuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646535684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fPpedbnlMPSkRDqpwxYZOZ72lc5PNxsYCbcls2oK2/A=;
	b=Vf1pxexKy3EcXUFdv/eAQfq0guOBksrZOMiBAY7HFHzXyO9nBwbdnEXHGASltnBP
	h+CHQPZa6uN3lSOpbl5K1z0CPxydq5OKq7V92JFJKZy5NK2aQkaHiSnocUJPX+C2nwT
	jonY2Kgfwl5XOCcijaT9VlAKruugZOJdbCoPYuOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d2cb2a8-b3afb97b-84ae-4b05-93a8-32259fa176ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27665ba0c11867f40c94939e6a6bbd12601987a25c41151cf5caaf05a14adbb6
Date: Sun, 6 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646535684

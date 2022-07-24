Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D5C180
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658666812;
	h=To:Subject:From:Message-Id:Date;
	bh=5aZSCZ6ljdYziA7LIYbrIuKBxVV7ZfXW0jQBPWYLKxY=;
	b=KW/UnhSTsOewuUe0zJBZ9QCVPUpeecQToMheXUHIG/81Uuxi1jLWVX3/O8GLbrVe
	xXucixzpGtzeBSbIcv/7kJg842ObcE9V3XY0FATm4KiVvOhELOsISTH+1FkWdgILR4n
	j5/9dmQIrZqUblYsGCeBzaio6vFBI6OlGtqmZJYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658666812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5aZSCZ6ljdYziA7LIYbrIuKBxVV7ZfXW0jQBPWYLKxY=;
	b=Ao+TcxCJsrzbkTe92bGCO+kwYrdO8W4imJYQPtfNl2d2jScdb2UT3pN8Z1jecGWX
	3cc6uRj0Z4HYU5jrOKAfN45qDR83P8lixpGf0uQGOWa80EGqDhPWCJRpVp452jKCQ/S
	d/y+bCBLGYvG/XKmB6O83tRMpezJ8+QQCyVkYa2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182303f0399-0cbec88e-099a-4112-a8c0-1d0940439ee4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 533659e404887760605954aaf6ecc34a972bdcdb980ea4a39cd86774a343f1dd
Date: Sun, 24 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658666812

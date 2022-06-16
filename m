Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1337A7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 01:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655341559;
	h=To:Subject:From:Message-Id:Date;
	bh=AArk7e4Yv8Im4Hv0bLTICMxWKcbrZjmyJKMO/l55gi4=;
	b=hBVx5Zd8xbn2xN0HlTq5CQcxRdTp4qaIsW0f1DjyNsA9bsTa/RQrDNiPbN9p/c5s
	vOi7grApioOFYcTsN5Bj3iAXfgP4SJdHk/4q+X5aTFwJ7is/g/Cftz9SqrbuhV+UVIt
	wx+/S4LUyYvOSgveM+HmS3ZxMC+DiADK57006Ips=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655341559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AArk7e4Yv8Im4Hv0bLTICMxWKcbrZjmyJKMO/l55gi4=;
	b=eBIKo96RBi+T1FFz0/hnkLv1JqoER4K0RhQ2wnGcM230WnwSmoPA305wkk31t1To
	Bwaptu0/KkycS7+obazQ54r21XPsUq6uIhAmHAdLb0yzZkdzSpkXW1LtLvn5EwcA0iP
	zOZxzB9cDEJaqm+32z+4SUGJKSIYds1D5S6YQong=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a0badd8-aff35b41-8ebd-4a3b-be81-f4660f059d23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2664589f24ef4e2ac720889a2ea2f4b795eae8a46e88dc643e4082027c324112
Date: Thu, 16 Jun 2022 01:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655341559

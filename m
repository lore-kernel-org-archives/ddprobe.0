Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDD01FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653681959;
	h=To:Subject:From:Message-Id:Date;
	bh=L+4+U5uQ7KtEFbK0Dhe0uSFSn5n7bIajVzPykHP76AU=;
	b=ey6M6SrRvXcrYl57EFYfQiFEvVlWSswu+fipWjsd5AVM7v2k7gNvlyV5TY2jRT5N
	3HJ7fRb2ouKis5L6GJiQlnLuKWjJMupCNizEGiyoA216LFgw+ruRqhPxX4SBgZR9Dal
	yaV9tJk6CCrrtAdqEA9L27zfuCkzrLVl44dBOk4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653681959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L+4+U5uQ7KtEFbK0Dhe0uSFSn5n7bIajVzPykHP76AU=;
	b=kCKBu4gvB4tDC/xvRgp0Lld8HTys11tLQyg01CQjsvaizlG4LhNZgdRd+EpfqD4v
	17AjsOQ9QpSdgWA4e8eXlP8oouxLNnTGoC/NrnqCNpvp36Vq6fC4jOFc4s4NnAdGQGO
	O/3q1sEDwbajrMzxdK8jP6AKeFLWEzB7JGQ6pi+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107203150-3fd823b0-581c-4960-a924-4645a287c070-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7297f0270db40e70d47c69a69169c9ff549c2aca0648c3c87b3753d732f8e035
Date: Fri, 27 May 2022 20:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653681959

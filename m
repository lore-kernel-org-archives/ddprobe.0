Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E14610E0
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 16:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652717519;
	h=To:Subject:From:Message-Id:Date;
	bh=nRaSel1GXVwgRIu4SEYXZgI38eCPW7evX7ubCvpzlWw=;
	b=GqNqhOjbJeiDbsKO/93K7NeDB6Z0szSlJXjF5dapAIlgdLjZWjFcp7bbcr02t60s
	1OzpiM8F8D1bo453PHSD7mxXTVizNUxevCJD46wN3cGuAfJeiaT+aEJe00JiiRn3osp
	nC5N66rwA9Ho6TZ6c00zQhcS6UdYdQIPFmcIlHYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652717519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nRaSel1GXVwgRIu4SEYXZgI38eCPW7evX7ubCvpzlWw=;
	b=jx9Vb9BoqiJxhTrkz10XhbhEA3gIL8ciXJpZs5UrfABpuOX4u2z7YzVw56EwhbqH
	5GPjou8jo8YrncaysByn1kYhPWoLq0pTs5oB9ENN8yp7ZfJddEx1XVBoYVkKsPpKreh
	u+eIMN6hGa5zVxkFPOjtLlYKcLxeZh+eOSbIbI1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cda401d0-6f2d1bbd-61f5-4668-a9e8-9768b97f8ade-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61d15417076f012f93163462b9e3b6452a7e40e8036641153c2d6165d82e0b97
Date: Mon, 16 May 2022 16:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652717519

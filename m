Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C09A7FA
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661168452;
	h=To:Subject:From:Message-Id:Date;
	bh=NIhiIvC0UfjYpC+d6hbe3ih7ZFLP8kmXrARAsoeost0=;
	b=EFvw9TAseFUE6agDeKT3ES3A6M++HTy8ARyhxiGNIJ9DN5JdOjs++DTbIikrDlTm
	GZ0JiNIsDI4vmLD5SPhJfG91y7vUPM+Wh4VBKGCf+m1KhwJNYGi0CVpAl5LXAqFzmwf
	BQatezVA44GXl1VEW1S8953PniH2W9yjyD/VZV3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661168452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIhiIvC0UfjYpC+d6hbe3ih7ZFLP8kmXrARAsoeost0=;
	b=L7hBgwwSA99D3QsVzkABCqNtmKLoNw1tKriIHax7RVlJD2VMyzykWlQ9/8RvfKQp
	4l/mP9AG9LrbtfuYivVTvHhMhD0H6UNmJDiccTzNb8KKY0iK2ZtREsANwq5T8bj+4uu
	TYgK/usxJxmJTcqUCj5XaK3PPb5f7XeQy6u0hhMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c55b03bb-b2d57ff8-9883-4831-b05c-e2b03564647f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 588cad71da0c44d440a830d0eb3e472d2e7f8a9ccc65168865cf748504eee3ba
Date: Mon, 22 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661168452

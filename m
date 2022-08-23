Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E601C07
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661255452;
	h=To:Subject:From:Message-Id:Date;
	bh=EJ/RN9hy9IYNWp0XLypgXPIuf4Gjd1y/HYIXHiH/LD8=;
	b=jicA2nw5nt/hzsIdlyKhgx0ysNnc3jJmiTyeAVAc4gk+MnaKdkrtKKDVXvaLX5pg
	ycXdhJRUcBc+7X+z34UKAAzRle2v7Qb7LWQ9jQQ3297xa/tvLdhaWyQ0eepmzz2QqTH
	BEcs0C4EpgtK5oF9K/snE6mItykO88m2YnnkjuDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661255452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EJ/RN9hy9IYNWp0XLypgXPIuf4Gjd1y/HYIXHiH/LD8=;
	b=gzHk4KK4X5gcXz1XgQ9m6rxyyEudj4OKcX1Iug0rmggpS1PoL0WEp1IY4cnRIdYe
	kPA0Uk9AAd19nWaMIOE7tTUBywOQe+KOzrV0A1XWjdrCI0XSbraOMOS9UQpM/FJmg1D
	3Hx01R6wX03KOnF6ZqTBxeB8pBvOndFCeYaOVeOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca8a87db-423efb31-935d-4fde-9c44-5201ca8529e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3879bb816fbb0638849b05620ab5e523b2a0344019ed451d7fb3377e03dc8ba8
Date: Tue, 23 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661255452

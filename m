Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF06035
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657843012;
	h=To:Subject:From:Message-Id:Date;
	bh=eS0gKZzJ5oA5wGo44aC7yO2ZylDB/0LRU3AaC7xnBTc=;
	b=Inpk+DqawNCV4hUbSWRm+XD62sqBasNgnpvsB1jwUiSakk2szfwaeYwyVk882uh+
	Q+gHp3acUEgCtvcCdxl48Zwiqh3pHBWGjP/L4bSWwoTr9erUpRjaaeQ32ot7knj2x3F
	7Ta+vsCG0/tOxDxGBjSIMUoq3LS+9WH+FmlLE8vI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657843012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eS0gKZzJ5oA5wGo44aC7yO2ZylDB/0LRU3AaC7xnBTc=;
	b=J2tbfK6iWkLrL4B5ImIuNxHbrG9Hfx5WaKkMjpfaw1CV90/VNmA4blTf5gkBHNsZ
	ilsiC+l6DCn8kPSNvl/YIpPSB1UiLf1K5yOrrwZKOGHrzxyBIgGQDJrqeB0rwtE0UK8
	60csdhh184MAKshENTKXvlAXmmh184ydYFPjIa7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff24d2d1-f7fd545d-d230-4a9e-a8ab-eb7394db4e6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d778e8b55f83e84a1337b0ad5809779a5d4ca2ec3abaf6f8be2c7548446a5e75
Date: Thu, 14 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657843012

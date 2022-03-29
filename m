Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CA37C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 03:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648523158;
	h=To:Subject:From:Message-Id:Date;
	bh=PzTK+JqI5Yajxcbilr2BNGL1OG1o6t5PZEq78YmYT0A=;
	b=hvfQ/W1mB+ye5oRheaF4MZklxdAymWSQ5TgAzNjSeXhNFKprcif64OTHzvghUZlO
	f+JOqOzZ9Vqw8nAm7pdGENG8szWbJBQGDwsvzRh2Zg3byY0i99AAL3UzC82GUKy0AQT
	kKuqAW+3pmRTZoiHkODhqmJfxm6fSaLZB/yAweAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648523158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PzTK+JqI5Yajxcbilr2BNGL1OG1o6t5PZEq78YmYT0A=;
	b=fzV+8iTfjjYEU5iORIy8lajCjixwYk1jgIM88LoOzCJaP/abRgXfPhowYxs6jciO
	6I5njNtne6sfWf1HR7UtuksijrKjqsJAT9j2bxvXZ+R4c6w1t5cpN5BvXLws7VcMnLS
	tqO641YZ3h4+rGQKueHTLOH9VO44izz0t1MLmCeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd3a32301-35d3ee34-6397-4234-ad06-b2cdbf4fc976-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d357884e8199d8da4a94b46a2bb619c2811aed337feb3995cc2c681432d01bba
Date: Tue, 29 Mar 2022 03:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648523158

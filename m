Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B7A33EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 18:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654800479;
	h=To:Subject:From:Message-Id:Date;
	bh=pVkQgu15owvyEjyFGHSb7wOOluF57FmqytWymyRp4n8=;
	b=krvg1JvXwt5nZGWniXFI6GYsOZNw/ZUfBSkYSSLjUSrorSZVvZzejjVnYc/Zb1xU
	5GM8GWhdxuGNMAR+Kpi7qwrM8xxDZHbnbqMVkYZxQ8W6SCTjoE3IW5HcbnXX5OgAcKO
	KVay8r/j1jUNOuQJR4vtpNClEEAC0iP1IFtG491M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654800479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pVkQgu15owvyEjyFGHSb7wOOluF57FmqytWymyRp4n8=;
	b=GmsBE+n/spQU7rR/9YgLiun1VvLcgYciN809qGNYkWL/W7EW9OmZDZUcRQGeeL3w
	ut9UUW7nc/MZ1h2m/3wkIcm8vwhjaO+lsMlnbfo09dfZckw+0DguzS9BQoS+Q6Q7Ind
	VjYwnNUc7PoFyuYdXObXEFFT28OtTxr6/M18Hq10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018149cb7437-713f28af-d2ac-46d8-a105-632b31dcfc28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c5864db70e79c2e551b5bb6c15e3082af00f1398184167dd5bb900da2ef5482
Date: Thu, 9 Jun 2022 18:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654800479

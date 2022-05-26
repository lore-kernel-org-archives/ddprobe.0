Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FB710EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 04:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653539519;
	h=To:Subject:From:Message-Id:Date;
	bh=3TtAQDaspCA7mmInmfUfusVlZ6mBKUo4eME135FHc5w=;
	b=gse28lMLhjsETuXkFrPrAuzuqcnYaH6s1t7XTgWa9yWpYTq6KTWhC0g65CDqznCZ
	Y6gTl6rX4bzQHWbpDVyVROF4EB7dgKIhKueeG2xQbLLfV41i3rtHZdLxUGc/ORxs8sN
	Rog10h5oTByUN1HF/+7hQAVzRHUx6T0SCKz/6DK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653539519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3TtAQDaspCA7mmInmfUfusVlZ6mBKUo4eME135FHc5w=;
	b=j8nx+pDjISg3GGDb7LX698U2spOAiHDDs9xXpck3CdWM6p6a4ZGXhnQcDjo/X0rJ
	p36R2xutvhyjtvHWpQli56RZLbuOP4gqfYrWYPqtkJoRBjRkW1hWO8pHsgViPYTXSSJ
	mjHbgFhFmtNBmd25X7l6ZN/AtJYFmKTRYGPNEehs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fea2bb46-4b404af9-f79f-49e0-aa7b-963480624f0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8df81c86a7965e931dd2d5b0367fa7ee7d929f98ee942b3943919547b7eb224
Date: Thu, 26 May 2022 04:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653539519

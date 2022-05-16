Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9921843
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 22:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652740019;
	h=To:Subject:From:Message-Id:Date;
	bh=zZQg47js9k9YJ7Zlp1OZSh18yZfNkE/LMJt7LX6jo1w=;
	b=f9a543YJqbgsuvsVtzKl5uoKFTniBirlzzJzYjPoL049Lq2id8GgitCjqvBcYutA
	UhZxLyfs8SB+v9tm8IfJtZZPIvuuMtFixNsGosl0+6hpQsfq9XGmvt822RU1tbaPG3P
	PUijPQGX4ZNhhq3qc8VsyPCAJj1kiTEUEB+WXrW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652740019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zZQg47js9k9YJ7Zlp1OZSh18yZfNkE/LMJt7LX6jo1w=;
	b=hQJXEsfe6JVkmTDwVr8g79Alx+wcKjbwT1p4Yhsk2VjKANpjUwDkZxrsGuUOiOby
	AxClpGllOE4McIuU66jqkdL9yYGndEpYP5tTDtdSb/6sSSu+/9v54gWQPYxC1jJR9V6
	JhdOYhwUUfDbnzORAYJooXqVYBchcukEnMGtIDEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cefb54be-413dabaa-6156-4a6f-ab5a-8e970f84b8ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a153c3f6a426f65cfc578be9a542b704466d039488db4e39465b79f3093e7f5
Date: Mon, 16 May 2022 22:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652740019

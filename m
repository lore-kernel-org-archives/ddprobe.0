Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805992F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647199884;
	h=To:Subject:From:Message-Id:Date;
	bh=kbvgYpJyrnfzC/jiqfH+BZrRw0wn2MQ/D/QRVd6zWr0=;
	b=GUZZOf3XPROoZnVtx0CVUqksQ9JyiPU4HIuceCWjPhwmaO9mDw42b5sv7lfSlEtC
	Kn3wk7YW4Er6OmypGw+2kCtzVA9/iX4L8+sP7T9HQgFqDB4ABZCZ3IWIP8cy8TyJGs2
	abw2ELj0zmobwDDG/LPSNizV3dnVf05Lkr9YC0no=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647199884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kbvgYpJyrnfzC/jiqfH+BZrRw0wn2MQ/D/QRVd6zWr0=;
	b=S/HDxLPSEfbb9yDw1M0Z66WSg44AiLs3BMx3X4uWyLwt26lBK5dGlS4YS3kP63l2
	f6ummJx5NTNyFWMbt4VyontWpE+zZUrK/vmRR/Ce5W31Y8muEKcl9WDk+BhlIIKpsOK
	+ZTSB7vmOTzATD8NzehJRbiT4545OxSwGiCFceq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84c3960e-df7bc852-2414-4dbd-97a2-c6cfa9a6ba1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6efce569414fb479ead1026e1e021b8e5f84c5fdf48b7cde31697539937758a
Date: Sun, 13 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647199884

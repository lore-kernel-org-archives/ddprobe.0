Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E944C15A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657691212;
	h=To:Subject:From:Message-Id:Date;
	bh=uNo6O6bKmHKzrwgzdHrGOABqH2K/kThbqn2atXT0Hvs=;
	b=gJOpi3L0ZFUKvFEMjcMGjJ8To5T6sWKLfbvwA74WfDrNcnF8HFQqjD/11I89Z3JN
	XGly8+ldxMojIhHu57RvWmm8vO3wU/Y5EwsIv1QAxdVRif9LHTW5SA5EAZNmH69TiQE
	XS7janMmrhfW0ix/xCqr5Qx0E+brYgHPzBdxz8R0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657691212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uNo6O6bKmHKzrwgzdHrGOABqH2K/kThbqn2atXT0Hvs=;
	b=GylFznuOieDfhL5XXrX+s+4T/Z0YQU2uKwZUjUOWdbsn7a5JC9wgwoGcuGD48Zhs
	q7ce4bjqN+L6Tp04p0UTS/DbMR157d5utdHvYCHaOfErWm0XApsInlBvBl/khYJCwm8
	5z5Yu5J3N9YbV8EMQ+Gb67/Hri+QgiZaV1mu5Mao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6188a05-b0e6f976-b85a-4405-86ce-5ca0fbaf6f60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fcbcb349b69e7fc190b8886c86aaf69f30b1a1567d0b404e84226586254a4eb
Date: Wed, 13 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657691212

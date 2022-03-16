Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DC37A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647433285;
	h=To:Subject:From:Message-Id:Date;
	bh=DHBj0SQhAmLO5QEhHkR7zC0r1DbIZV1K/yVy9YBEQOA=;
	b=Fv3shpJ1M0yOS8qUzSp1lGTPSkB3krlELWaR177JM1vtElLGa/thd+9BFFd1KFUw
	CMl4jG7ERqQjU4NtLZ2x+IY3S7EqLoHuSZxMEjkgYgbJXo7f5FWuAiBYmhaZr63gkNm
	GU3fufAJ0pqhKQMLn9v5w+U2lj7ozKF4UMnqpHo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647433285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DHBj0SQhAmLO5QEhHkR7zC0r1DbIZV1K/yVy9YBEQOA=;
	b=Zgz/ZrfWpy/qiH5Nj6naLTFHmap3vO8k8aryL6ayrWSUXLkpqfEBkaiQ6Gali00x
	s7UVbvryYe/tnPjRqg2acE5nWZrIgNkK+F5ZnApgyTYWD4s3W9nJ26XMLx5gT5CZkto
	rENlT2hPIv9AyjsjpgCgdtqA3H3+5xNd6SMlMtxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92acfc93-f657f78c-231f-4f86-82b8-ee259622b141-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 340b8cce0a93fe4f957532d390ed60abb857320a00b4754972d20eaedc272087
Date: Wed, 16 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647433284

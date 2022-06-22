Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8F81843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 13:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655903606;
	h=To:Subject:From:Message-Id:Date;
	bh=EU1yHcyKwI0WlzcS6lBfqLiKXXwLwOk2gXGTr9k8eQE=;
	b=FaZ5gx73BKlEuZnAmS4zyUSMCYQWtqtmNdyKlWm+S3vXmypaMfXtLq/GYjsVItUO
	aBkMXEivo8Vrk17gftBrQYqpwh6UoMQjWEnymGueFaXoSdcB46qw4mhyRrDMbJT2XLP
	5kFrG1qtSQpIytWG1tCI91dRUxFhXyTubQra6WBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655903606;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EU1yHcyKwI0WlzcS6lBfqLiKXXwLwOk2gXGTr9k8eQE=;
	b=BZHTwcP5IhjKGqFyWjE2xVE5aEUzQDbuo/qeLgFFr3H8ZkrGp488wzgIR07UJu4m
	nX3g/hGe5btC3KMwe7ZJLy6djoUffJ6kvctLinlpRUkpVgLuFqpZzVlLxB2KILAhGhT
	pvCbb86mOHwYuF+K5Lzliy5RODdrvuf1ZucPVoXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b8b6ca5-5ec89707-ff97-4575-9886-76669415b1ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb79c4d796371c11b80150ee3f8c8b12508a39372245c9d1ce45fcc4d4524dd3
Date: Wed, 22 Jun 2022 13:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655903579

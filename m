Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E832F4B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658664412;
	h=To:Subject:From:Message-Id:Date;
	bh=mU/2ojTChWMy9FhIkZ7fAetAYh/4Khn/UfFRpsxJhmc=;
	b=B4rHEkCDIfGTa1/KYTCSxYjyEbqoGe/lxmMdUWkl+6Jx5dwcgFq/vzwz2v1s1cZD
	OV7kXPi9msLAGEa0JXcg5KdhcWYk7WnpuPVKdvAAOmXqK62YEP5DDvXAK4oSalARJZf
	Kfu0LxdFkkAoX+OOrgEvD3btJ5zuoUIBLeLDdcT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658664412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mU/2ojTChWMy9FhIkZ7fAetAYh/4Khn/UfFRpsxJhmc=;
	b=hLTodThXiaTsG9vwYMzJpNrDPoqfXzqnDPKyncafwro4tEUFUZ58NbY8RaG/4RFe
	tAa/S5ETy07fu7Dza/aF+/rwDq46/6Z6VxOgQODkDvOESYlpgMODi+HbtQTJ++7I/fa
	2RGGN4qQXFTLP5EN5MiQp+M362rVkSojjcBRBY6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182301a6462-7bd70cd1-49a1-47a3-82ea-d1b3784b53e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1000376e043fa360934569ff991d184f5f840b3856ababd48302a4a1c43a24e
Date: Sun, 24 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658664412

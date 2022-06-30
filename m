Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1718A7B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656589012;
	h=To:Subject:From:Message-Id:Date;
	bh=S93d+mpVrhP8TeVTobs/m09sipJrAWlnxS4jkEq2gRk=;
	b=QTUndOEqqaw7Yf6P0BOeAwZ8W+LIOxKdFx5CNbdIP1II/e44ZkazgiUmcNnF5n37
	tcqxI3O+T30Msi0oNlhcHAT/z0X3mXc3qG9Ywp/ZFOCcgGGQ313nXz6tl3cz1BRNoUS
	T4qdO088T1GyCHq3TQueaGf5jCe71NzB0CY52yK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656589012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S93d+mpVrhP8TeVTobs/m09sipJrAWlnxS4jkEq2gRk=;
	b=WPXX1tP0iTcmLmveFtPmmjyST8YE5ZvnUQuueHagjBxo/sJQ3BkbbYQsZf84nNFn
	AOrGeqBONQtiWJhW9dKJvqppP2+s2Z5LHBoZFxKRymQD/yioTkGoU3UQF0aCmCaulkB
	o7/uTTAvaUqBZjJiONZ0v8LETsP/tgjb61fGDkTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4664d31-7aab3eba-1e80-4c1c-b9d6-3abbe75c94f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9ad9e54ac25e76552fdb55e9ffd70974a022301d8976bdcfb8c19b74ef0dc35
Date: Thu, 30 Jun 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656589012

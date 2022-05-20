Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1343F7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 01:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653009599;
	h=To:Subject:From:Message-Id:Date;
	bh=R0g15dOLz68ciEuR0o+yx7jj1wO0wDvRqvLOVH9hdWs=;
	b=EJffkiBRNA2ZzOVv8AkfEagLZMADaY6Jayi9uPbMnXiFp5YJg6BzM0KSDLpPn2k4
	1LUVHh5C7zXaGz4gNLrLLXkSIItkWf7iPx7pegtaQqMCiN/AQ0ZR101e6Lm8Xp2UoxS
	tiSY224BcUIA5Cv8yPbYqLzeyrOGUdjcVOJZMRu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653009599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R0g15dOLz68ciEuR0o+yx7jj1wO0wDvRqvLOVH9hdWs=;
	b=DYClUfSM7oBt3tU7/hGLRKDp9oqWqirNRkmXqp4lDNS72G96EQsEyP1qJ3+7UT0o
	V6cAaTFUeVKVXZmc5UvlTpigwhZaamQ/uJYBUHVximjVzYY98TPX3pYvXU9MX8lm1Zg
	Tymp5vuhH+oVJCLHSF6H7EoWVr+K9U0TiFZaQ1Q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df0ccb3a-bf93a6e4-d073-4931-81d3-e63216d31793-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04c146ac0838938aeabab3ce4b7dde86bab23e4e39b6a6bcb3fd59c1d3a7b8d6
Date: Fri, 20 May 2022 01:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653009599

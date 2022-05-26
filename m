Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00DF1113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 07:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653549479;
	h=To:Subject:From:Message-Id:Date;
	bh=JQNeu8LYOVZh52IJwfgmN68NqlXvOTfN+Z1CfACNYc8=;
	b=bnKZiHHqNINwtddl6ZvJBNxdEV9yMJxzNUYwFZoI1Hp5IqoNkO18sacvLygg+fM2
	HUv4rQXhVft5/L1OIGZQxg0ugXl3aTN9bdJ3y91TUCHWdMWwuS9GZwP3WWz3J4bB7rN
	PPrOjH4VmrjXQhAkX5uZDmtyewxU9Satq2BVXf7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653549479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JQNeu8LYOVZh52IJwfgmN68NqlXvOTfN+Z1CfACNYc8=;
	b=VuJWisEy3lhDop6Ao9emEfs64dUxh6C31g/WnrNk9tx269XlAW2Od4Vm7LnTc12D
	bgaHoIcqXKJnUE+nVgj0aeoBLP4q63oUtX0RLN6PI5J25jJdEeLd+Gqq6JBTgOlTY9p
	7gWkE0XxOJwK3vmgCNhozc7dGyeZdZ+ZWWuogz4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff3ab584-f7fe607a-01df-4559-b514-fbe6b2936bfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 132138dbfd5835a0ed82e74052bd083fb7f8c0748dd03fbd65bb44cbbd3de959
Date: Thu, 26 May 2022 07:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653549479

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5E81104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657443412;
	h=To:Subject:From:Message-Id:Date;
	bh=eT7FrAXr5+DIOYmqjvkT/DQfLo/F8NVd0ROuHjVrp5I=;
	b=HvK67IlsFtB2uYFJofoHAcXW3aeDhR6Q0mWyKViFFV0x5poNqBQ2PxvDMiyJOFF4
	xJqDkL4pFHYaSJcM0EzSzOazLcMXCy1mdRxePKmD0A0FXxj/zPsXb2xUwaZ77plt9nA
	V+F6gT5ULdYRrbAsWkaULJENcyAKlt7gY6JNMGL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657443412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eT7FrAXr5+DIOYmqjvkT/DQfLo/F8NVd0ROuHjVrp5I=;
	b=BUjxGOW1rwDOH1SjN/itmEgihql7tMsfUaP4a1TAvPyEHmjYTntL/eAeW0TVs2b7
	Td9tdTomxoKlGQmLE6NuLlUvRhcJLj1nesISYQIzZg1J5nQCCvYnSLyJNv9jVkWypjS
	nXz1Sr8IxZGI8XfZVqZK5gs/xfKl3PBx92HVx6Pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7536a35-6d5b2df9-59c8-4f49-aa57-b497fda5e5eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdcc505032a72b1bb864d096eaa85f53be694785d4b08b7867022f41c600bd77
Date: Sun, 10 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657443412

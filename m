Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6B728F9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 13:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652274360;
	h=To:Subject:From:Message-Id:Date;
	bh=WB2LRqot6hO0WZULDq+PPv74+uQt5LZ92DEOWv237Lw=;
	b=Gki7r1uaP6kcKWw5RhAkqInvigTADY0LaxWJ1ZWI8eFjCmU4CSgaKU+l/FQGAq4e
	WRCWwmEfIrrb//7ySWvi7koOcM4KZLWgLrAAX6t0tb9/R/oUzl/mPTF8YIJ+wn/vfzz
	cr6VSde9nG6l8QW+XPPd8oEHh5J/4wZ5EQcAIr10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652274360;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WB2LRqot6hO0WZULDq+PPv74+uQt5LZ92DEOWv237Lw=;
	b=Dv7URCedmeP7nG5kHpCNn/XqbO4ZPjgj5IFJEXZybz2jl7cr1zZKKHBT4i8hpuL2
	ILe0HPUuftTAaQDUOkr6Msuso4JMtNQBT/B91dtbD5GRrQY4Cu+4eFwYCC/Q4BYP0A6
	oHqIgYmcGs2SyXDCSs9V6aau4cgqSPfuxp+lZ40c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b339ebe2-d622f340-7cfb-4edb-bba9-529e3024bbc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c72153d45d2d5a86af2c3bd8f3a3a028935c4755771eb8e1cdfd17d8e8511360
Date: Wed, 11 May 2022 13:06:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652274359

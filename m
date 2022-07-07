Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3532624
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657195012;
	h=To:Subject:From:Message-Id:Date;
	bh=lJmnhsEBeL6pVm1aNzIoCnWfUQDmoRezkLjRO2wWybo=;
	b=bqTTge3+4bnoR4emSgqX29YlCv70xNWyao6vBMurtMA4xTsGyIZ8tid1hOWnBfgN
	Mc3skCwK3/VSei926+F6JmIC7+Y8j4A/TS6SuR0JvbpJhSsZ3ZkTHamoqoy8QlfHjzc
	XeGj6NEaQSZDABxqBj/qmZ69e8DtF2osNut6s6+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657195012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lJmnhsEBeL6pVm1aNzIoCnWfUQDmoRezkLjRO2wWybo=;
	b=jmnWcSMXgL3/Hi4arsanE9fWDPh/66TFn/Q9GA44WBA/QEpv6ENlf9lroW3GZVzh
	qfRkD4Qgz2gMK2L8cqXyBY5DJGZBCjy4CM6fktNLuy5Sy4NDeWz/JCAuwjNFXIPbqjd
	l8JBkTJuJ3AQyliwQNbrGqZBBsaaFRBtuh6dLQ90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d88520b2-0b82d2cb-f055-413c-bc20-edddc5c59273-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9c24ff7b551293964ed64b30b627679c7f5349b2afe76eedb4abe595f1550e1
Date: Thu, 7 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657195012

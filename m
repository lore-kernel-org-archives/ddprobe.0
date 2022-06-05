Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177737E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 14:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654438319;
	h=To:Subject:From:Message-Id:Date;
	bh=Xjl+PQerXTK8pV5yuJfgeeaN+W+9uQP/icl1yK0C6TQ=;
	b=KKcN3JmWivoLWYXge4upCfBhb7hm37wbGuoiqq+p8TFtTXsMRe+4cAt4NQKz2Flz
	LxVqWyIKB9ShXz6czYfMCBXwuGWENimp1H+VGatDsdkK79WwIop1G6kEA7thtfFdEem
	rcL9l9MeWwolk1cOVQqrd7vbyA1OSf0WpAgVVKNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654438319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xjl+PQerXTK8pV5yuJfgeeaN+W+9uQP/icl1yK0C6TQ=;
	b=MF/ZREqKMas2vUrfs4mmW+pHc5iWfegttQaG0i12nDo5RVen4pI6r4Y0FmJFOOAN
	M9d9rBVywwmMV+fTMI1F/x4FDvHiLcwsT6+ujm2izWJLyOymB9McHfcbPFlSSmtuKDd
	o6JjgwOsKk116Xr0WXhxpuUv1Da6/nJtb5B29dsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181343554c6-f5044444-b943-428a-a625-4899695e8957-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c306b10159a55f96e128f72ba4b584e435d7a6ef2d8583b57a93ce7db7d0cda7
Date: Sun, 5 Jun 2022 14:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654438319

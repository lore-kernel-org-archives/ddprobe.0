Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499877E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 04:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648356958;
	h=To:Subject:From:Message-Id:Date;
	bh=QefuZwPF6SKijStMxhbcjGiqGmmZLPtIycRevYmQBOY=;
	b=T4aR8rLU+ugHcoTntg/GC4/c/5Dzhd8JSLQZYGkkWMmkcmciYHN/JSx3HsgayI3M
	aFKNSqUrSjmJNycXXX6LoUyIGU5TeaCJkcdh6lPwEz+Z01Vimx3JXnXkN8RNL/o4PxG
	gFYJCbT194ZVsCiV9kE4E9krSNGanXaSDY85+Ibg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648356958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QefuZwPF6SKijStMxhbcjGiqGmmZLPtIycRevYmQBOY=;
	b=cp+X0HHvRAtxLoACXDbOOfs6ZLed/wpR3lE5eGcqP3Q0xVQIGFLRLSy5LHnN7VxF
	5HoEfsBVvmuBWHr573Brj1LW7yaYc3Q3n17ohDnI8+uN669PW/kB7H8YhprjEsbpq/X
	EcBqmbMm0Ejr93f5sKFNBAN4ufGOkok8Gzu2S5oU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9bb208b-2bb03eb9-afe4-47e8-bc98-30c2781b7778-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df5591eaf2091d1a03df75c5387dad810f7659c2dfd6a5305d0a6b5e1ec16f28
Date: Sun, 27 Mar 2022 04:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648356958

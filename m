Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C257A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646906785;
	h=To:Subject:From:Message-Id:Date;
	bh=kmLsIBxWxKzxfdb9pxnB0kb59RknJw67BXOVkTsRVjk=;
	b=Soa49maoRuq6dVQMW/S8dWFNHkOyHF05ir4p54EXAGAAU65B0+MAbftoNmVi36v0
	vKV6v7PjF3PmjeYkqlXceZZ5Si11waRX24gnc6VdkwB68otX9un4PkzTwyrNzBBMFt3
	bvFkNoz2Ds2lbraB23A+04GCMXTfiKBLDcEfzwMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646906785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kmLsIBxWxKzxfdb9pxnB0kb59RknJw67BXOVkTsRVjk=;
	b=Xe3KPAVCFyEowUNqwLp32GxxO450ReA9fIZhQCFPSF9/wI003guRQX4/PFRjyj14
	UM08/ps5EKacSSYJPtPvg9TZAxh37Ukx2UkNzwGKSx5j31Rz60expSmb9pdJszeUJU4
	LwJbpg2AgpM8PVsqd58qvfRJwfe6Q5EphKpcMJes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f734b3bf5-cca3dedf-d0ec-493d-961c-6e8f7a625ecd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a20a15b615410348d62e249b8cffb44056fd0e49d49311c1ea2bd46230da03f1
Date: Thu, 10 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646906784

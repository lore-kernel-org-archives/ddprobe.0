Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282207B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 08:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655626919;
	h=To:Subject:From:Message-Id:Date;
	bh=TDTYAaMTDNoT384BCztS6kOtNTrIQGnJAvyMxDdVsx8=;
	b=NEmhw7wJxTe8rZveFAk4cqo3wzAZDCgZOurWcIKcmGmKgfGRoq6WdMwDzvMf/PdO
	f10iaIB9xwMChYs8dYPgKKxfcBgfZRm55DzLMOfRj1LELsmrgs5DpAv/fup8S0+awsq
	Tn4GXyzXKrcLULOg2Grh9SFmg+Pn8H0VkVww8aWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655626919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TDTYAaMTDNoT384BCztS6kOtNTrIQGnJAvyMxDdVsx8=;
	b=NeOLT2K1j3gxpPYLRjoyu8JXF/aDY5gPvZL/KU6kcAaQUVlJRukeYIatawjGjA3J
	u/HQfQy4TLKMnAshKOx3Sb/nulV+NF4VKXwsj53kWRCzWIQYRHfimjJ5ssJ31Pc6jjV
	r2rX697Z4c6o56fxUJXaSkI0DaadYXWYISd18PAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b0ded3e-4a3501d2-6210-4830-a57b-ed0f34bd4c93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b69760a002f46a9607c8cc440b8091e83399d8b769dce91ba32d738cf6018961
Date: Sun, 19 Jun 2022 08:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655626918

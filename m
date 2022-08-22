Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EE67FA
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661169653;
	h=To:Subject:From:Message-Id:Date;
	bh=3Q+lCv77WPlJmn/Gm79mapBuX14NbAUThZ7Ysj65XKk=;
	b=TiwY5zjkXM2oz0DqX4Bni8HkIdDBZakXCmFgFxVDvKNlwN+9tAJ2pUEQUgSApuGC
	6NwTKUD091YbmtJwMyOl0MAOBXQeyLFjnWuypc62p/A2eDuSYMhLOxUwagvG6swep7B
	QDICcFf1VJPmtPAYwbrPnGtMEnG8WrBjRsjYS+Io=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661169653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3Q+lCv77WPlJmn/Gm79mapBuX14NbAUThZ7Ysj65XKk=;
	b=e5+wWdfpFmkJWJOn7XP62K1PiREYLNze4861Nb1B8PuUt0L1O6ZtVbUhEfJQoKiM
	9f0nMw+UcsLXntJg/kh2L6EA0ArP8S3sU4FeUS/5vsmMRI5rJvgnfJ8Sp7CMIuAB1wz
	nNFkeq0SlVNU7k5akAEttdBQLyB5gDGwRMVqOTCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c56d5333-7b0e408e-9b85-4f39-aeb3-0d8cc8c194e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22c0b4f7ee4a63bea5dab3ab36beda45a485e1d4e9f495e6fecd7daf21acccf1
Date: Mon, 22 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661169652

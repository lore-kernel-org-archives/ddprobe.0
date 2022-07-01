Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76581871
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656682012;
	h=To:Subject:From:Message-Id:Date;
	bh=Kj8w3JoaUDgGXuVeDuSu+imHEQ3QeUs3hqUs9U8mU2g=;
	b=a9mthb8L7mRAt/VB7f0Je2Baw4hqUKRkj7ofYDolmtqp7g0k/ErgWJxZUkpfVGmA
	GC32wjnZIiZMgMPX/N/7sRJs3BmOXD52s4lS4tA3AkTeTi/0CWA/h9nTIs1Mod9BC8+
	SY3KKr1m44Qud8JSWAiZkADyMFNzW2ilAJwVNBC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656682012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kj8w3JoaUDgGXuVeDuSu+imHEQ3QeUs3hqUs9U8mU2g=;
	b=YBJcRzVdkA7nlCNA7Pd2V34XIXtKo9/x9bY2Zb0//VL/cTMZn8Sn+n7GBmrOF3XF
	txZwLaT1CQhgVSXLJCsSjkRb+abbc0E01POQ8UXCzaXmEicT1Cb6olSzzd47+vuakZ5
	38FO1aLbBMXwqe+gwAFz1AtCl2a69sMGDetQ6Eyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9f15e8e-a611d871-66aa-477f-b4c3-de76c4e228f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08deb903178bd4d1cbe18a0721b9c25f98323042460ad21be5f00771e65484fe
Date: Fri, 1 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656682012

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EE26D17
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656545812;
	h=To:Subject:From:Message-Id:Date;
	bh=cTi4ZQd6q5e+OuzyuwTOEZKe5wgsE/vLAK1CoM76tLg=;
	b=YaLDYuLeum53xwQvZRgT2Y9QqpnUD3XAGmxzJhHQiNQQ77uN5Fpb9SBLmndMWJ1Q
	RCpem0kj3dhcBI5C+Iq7um2Ok9R6xY2piKIdtPfsz7UMIDKCdt12N5dmI4wvcYtKcq/
	Dwfe0uG6Df+gOYwkcNG4pvRoY3eKPkhZBDFJgnTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656545812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cTi4ZQd6q5e+OuzyuwTOEZKe5wgsE/vLAK1CoM76tLg=;
	b=SsRjth7IgjLAu1B08FFwb87nORlJXq7k1eo2ie/L+agsZUhP4Q3v8sTFacYfgIaP
	j7PzuYt359qF2w2atMmBqBQRD+Lfwdc3JF84+tIHEO/tKoZ46jEjl92lzOeiZoxdJRP
	BaKoN7tNVwfGIt4DONSyerG+Homztfgrshfe82O0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1d31f3c-0b3f8a47-3827-4a59-8ceb-e4604b7229f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8eda96ae7f238c006f7193e1c9b256d5d558d7b847ec604752e8a4da297d6fb
Date: Wed, 29 Jun 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656545812

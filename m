Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A14E15AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657679212;
	h=To:Subject:From:Message-Id:Date;
	bh=vWhp9na4Deh6pOVfULsdtw5QkPE9cZ3S6hL9ZWnY2Bk=;
	b=ftXxZaqCKHmWo85QdiOo7FKocyElqarNMMI2EzZPAVvG2xaJ3qXkweLzESGgml9G
	ST/IIaKxUtnRfZA1K+Jw+oQFtNTGvpwjXVEdnO2wQ1qk3FEHObntzjs5NMF7LG9Vw8G
	ncyqRqVQBXihu+Y0zNn3gHGbo3u6hqJ4Be6MHBQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657679212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vWhp9na4Deh6pOVfULsdtw5QkPE9cZ3S6hL9ZWnY2Bk=;
	b=aZnjDhmWFqkDKGzmOLXODPQv/+TxoFUIIYu2cZdeQK7il/6jl9HjXaWLtpFII5B9
	RijXtEyMyzeRg//tzKmS1zrCnL80N32C3+5xSskHaeaL1mE4dA/PT66DFfrE9LLdJ2V
	OcnqDab6ma7NFAQqqumRKO5GibeCTDhlPoB7VO5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5616f94-38fed060-eaec-4ca5-a842-27ce59c6ac22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8d68e4448a18dee498bea792cb2c516225b736792d71b7ee76bf59c335f99c7
Date: Wed, 13 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657679212

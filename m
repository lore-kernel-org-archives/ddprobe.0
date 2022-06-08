Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FD27C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 22:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654725719;
	h=To:Subject:From:Message-Id:Date;
	bh=zw8Xhf1rqJQub+fKf6ujYcEod2Nn/1yWl50CFSYBMmg=;
	b=kMmtYgiLYqx56tKQLKrhLNbsAcabhioeKtk4+UmYwEL9tsyYegpTV/bcDPa3Fj47
	hBCKaAEDrz0OCujL/Idj6+W8uERksTzeK2fFvOsylChLEAe4c26bMzgADGXbN4nFLG+
	2Dqh/22NEMQ2Q1MUPOoyehY730HyGzvc78diMUDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654725719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zw8Xhf1rqJQub+fKf6ujYcEod2Nn/1yWl50CFSYBMmg=;
	b=k/0UOySwOnU3SkNuAOLtXsQCZe5FRA70IAB05NFY2zYJ8x0EfVlBLJqlx9YF1E6b
	d37AlBHoN0AF16KiFzgUsH6jdD9saHWV1e8roNENvfm8TmsikDpj1uJjHyjfDiRYbLm
	OIC7iKn7xu9Bp78sMh6uCErrzyk4bwYmNxxiMhcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814556b4f3-3e919666-2bd0-47eb-b5ce-79d3469d5852-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d747f6e716096f63b89f71bea5d183702402b47cbf4b15a5ee38d1fe7645a1b
Date: Wed, 8 Jun 2022 22:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654725719

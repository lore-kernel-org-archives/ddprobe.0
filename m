Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845301102
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660550452;
	h=To:Subject:From:Message-Id:Date;
	bh=+B782C8bmHVaaKvcC1cfAdyc1tpYCAV/WWT3nHhE3b0=;
	b=gedQ8bA5UXC6nBalakMB3XdAgRPIxMwjsdDmNmYO1kqiGxc7sd4K6mZoNPwrALEN
	u/ZtTL2JzW9RMRWh3i9KaXfbgx6aHPU2xuodyeOgTl5VEN+IEMAXTbQmwJPimk9kcM4
	ajkIQhCECEALURuKmhX8zzHrlLc6yGZ+FwjpcrWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660550452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+B782C8bmHVaaKvcC1cfAdyc1tpYCAV/WWT3nHhE3b0=;
	b=EW6teyoAXR6O3/2fYece/QMZOI34gJYKDOjzbIUgDS1Tf32UgLyfbwmCpgvl+Rru
	0i5dkJ8PjYj3KtjKvYXG0OHv/o2njML3HFBj8uap7Bn6pX1kIXZbGlXcqftKvWjCh/p
	hgEKTENDAp38x8M37XP1q+ief8fkAdvjZymN4QLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a08515e9-629d59ea-7050-4d24-b259-7432d5ba9329-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 613198a8a707e9d4eea0024fa56b06be4b08aab78bd8eede14fd7e4d6ae7a648
Date: Mon, 15 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660550452

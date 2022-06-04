Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E22185F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 18:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654367579;
	h=To:Subject:From:Message-Id:Date;
	bh=+aghBHnBPZ1OZdGtjv8tITvi5brQKvTAkxprxSk4jZ0=;
	b=Y7GIHjGztSBXWiYbJHrgaheRLVMMCzh8TuVnxd2wSg4yDb3JZbRxFJh1zCeMamq+
	5labE37L+Y5eMHbr6e7u8jrasAR1xWg6KzibqyW3u/iwSOXV16LwM4PVPXz00o1um5t
	bZbPKdB7RTkKwelCAjQtBacXp5EsXiLFLMw/rySw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654367579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aghBHnBPZ1OZdGtjv8tITvi5brQKvTAkxprxSk4jZ0=;
	b=Ujmwp16XO5xtwfalR1Pf3bPLuk1ALY9PFBiFOdf2KCX1V20UOJbgBtlaXbZSZz9o
	S4sEHx6ip1I2q00ao8s8EaCh/JmF0AdbWCrAdPUxC1dVBjx3sOdaejw8aU47x4gjuez
	KoMxirGv9/0HJvr7cEXrW2UHCqsrJyVzyApE0sSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ffdece5-e9a6453b-2029-471f-a064-4f4bb3d4248d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 618341255a4453dda98be1fdb59881d102516375fa88b0695851b4022ab8bc66
Date: Sat, 4 Jun 2022 18:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654367579

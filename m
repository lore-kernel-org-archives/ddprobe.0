Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7747E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656556012;
	h=To:Subject:From:Message-Id:Date;
	bh=r2OdYjT5Cv9aIV6kybTBitPYXmEXkcAso+9s4ykI914=;
	b=V1/1Uj5sAIJvJDo1xwnYh1rU0COiegI1cWqhPnAlFD7AL86hikZZXVzKnsedWBOv
	d/OyT56wssTjGhrpcwFofjqdFr7+cK2OOoRp6PMd0IQt2wWAyNmJeZfsxXYmFN3RP5n
	wqD8tOMYQaaZknkECiJJZCjWLU5p4eAGN6rpBkvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656556012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r2OdYjT5Cv9aIV6kybTBitPYXmEXkcAso+9s4ykI914=;
	b=jJxsWbUElVN/IGjVIZrhFHwlw+h/Qe+DKSvydg6nwCWQ1DOrCjs3QiIaa1LZKI1x
	cRa+Ez9tt52dJDOyGWqy24IR+5hh85ooZXutFwfoO/gbCK97zxlc1VI+UTMfp6Vk+es
	hNkcHgGaBKQlaZb1xDAUfp6rRZ7wrxlMAffdbLGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b26ec30f-8ed96f03-e22c-4f82-bf3f-372aa21adb45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41e8e6f2ba38788a1b99e202b06a84221227730f2c0ffdc9734712a97db52fee
Date: Thu, 30 Jun 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656556012

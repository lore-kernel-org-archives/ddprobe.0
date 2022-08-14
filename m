Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737E7A23
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660488052;
	h=To:Subject:From:Message-Id:Date;
	bh=Odzi344q8RL5B/T3vyXzFRZlX3Hp5EwzOaUDgEiC5q8=;
	b=FLzr+rtQBlR64OUGO9TgZ/8KZDUFhbd9fUqzcXqaIEnszOXZGDi0QaenprqE6JCP
	BhP72pjvrKYw5IR74KJ7vQeGNcdwciSVuM+M/umAJCz96Cm8VnuYCS1I2zscb7Qp0IO
	x+qJChlRk2GmRglfl1MM2LQ9oi3x+uIxaZSl+RtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660488052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Odzi344q8RL5B/T3vyXzFRZlX3Hp5EwzOaUDgEiC5q8=;
	b=ZHV/UT+61jaMNaKF926xsOsZRElcxmTWQVRxE4/aXToIwwAQ6evDXpCzMiw/S/ll
	3l8yGWoOpfM8UOFDg7Q99fZQvzeuhdm+QgrVKiePH+byJKgh6m98jcuaetO/vFQhtC5
	CRZPKyuFk3O9xCwcID7GEkF1q+/mnxZon9d+kjs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829cccefb7-42fcf2d0-bfa6-45d1-b16c-191b2d5bcd83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93dbb4224802d0ba0a3fc006f399efc23011b702596c0ec453fbf3e3039ec394
Date: Sun, 14 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660488052

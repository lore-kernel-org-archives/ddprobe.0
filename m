Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3F328F9
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652350199;
	h=To:Subject:From:Message-Id:Date;
	bh=ZIRKYS1sSlQpPuKINbnMO4l6Q2H2u61+mME1CNGQzEo=;
	b=Sol8Q0/i7ysrISpFG2zadJS+0r/Uo5FV7EJXDO/RTwZc8bMQNxsCVNRMQ4RhC6mD
	m7+6ZNdN7PqJtt4y4+crVQssO8Y2vDaEYJ4QDPrQslDzTSdmzGbx78UnDZGvl5VrgxV
	Rok1xiK4NodtF3P3QHhHaK1p/bcQ1H05u4zazm1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652350199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZIRKYS1sSlQpPuKINbnMO4l6Q2H2u61+mME1CNGQzEo=;
	b=U2NtrWsgRrK7tajbD/vP8mW818yreZKw6NoO40UF8+wzleMkFT2h8KpBEt0rCT+J
	Wf36mvaqDP0p/j3EqUu6HaCnWKWyWHeHxlOzGImC7SZIIpIiNgJwM71de+0Ik2TLjzp
	/FX8ttKtzhj9bWGj9MyJrILF+9hkpiFCvNJwkDn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b7bf25f2-d4563463-6371-42b9-ab3d-c5c93fb4fb55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7f600f26aaca3d7d97221a268de7b1add81baf4d809b07ed369c2505ccaad75
Date: Thu, 12 May 2022 10:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652350199

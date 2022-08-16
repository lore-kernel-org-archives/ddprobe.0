Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F432F26
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660640453;
	h=To:Subject:From:Message-Id:Date;
	bh=UYBFdUWtj3lc6f7XqLkJZbuof0pyXf4y8bxXat5YZQ8=;
	b=PChgo1p6HKtPU19o34NF6GDaES5eL53KqkPKSDljM0ukZiGdJnFguFK8G08Sl7/l
	t42Dv0KT1J1/0BGGDWUU8kK8aUcmQOQIflecivSzkM4AF0GxVRDsZCZhlmrZwExYd64
	A1nGMeYkpJrDAzun+K/Zfpo4XWl3FirVaTHzZo0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660640453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UYBFdUWtj3lc6f7XqLkJZbuof0pyXf4y8bxXat5YZQ8=;
	b=Dq0zpwQBI1UtEy6BQ9+Um1NVh97Hq18z1bGLk/QjaKld2RWZVpXHz8cXdUK625Uv
	v8vrd7ic/+WDRsPhTSOOYZ4YG84cmLbKxBhc1/ejH9BKaZPLXGJ+Tl+K933M3s6tcPK
	29X37RzeYV8MVcBggtU0Pz6yg0kKoKB8QqsQvW/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5e25fee-ec43ddd5-b1cd-4051-a897-91a3d7af26fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33908e19b770f0caa66510526ffb021a3a1d8ac3d0abe28f195efb5b26f61152
Date: Tue, 16 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660640452

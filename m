Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484043D6A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 15:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652455859;
	h=To:Subject:From:Message-Id:Date;
	bh=CJS/wFyaaoyyeOv4yMXVHqhWiLdlfYXN0MqNXhB/5gU=;
	b=hSFoC2paomVL24V+bFCHJF27I3E3OyX35bCzivlYYT8v9rpiol2lhXhUejI/ZT+h
	RgHgqUTzfXvUkL8obgdSgyiXsCSeV9knoR3AhkeW9gO6wvz6SuNttgE7wYEdpmLxsom
	pf2YL7fO1dSwbjhvboOAIVYuASqTOad9FRNJVOWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652455859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CJS/wFyaaoyyeOv4yMXVHqhWiLdlfYXN0MqNXhB/5gU=;
	b=Lc/cMkBmCfjjQZ6Fkkp/WpE5JLvagEIGhRnnGyZFQv3/j9u+dIaloLmMfMB6qO2M
	a+NombTwRzustGnpoD1f72yGw+8K+/BFtADGVWJoVwgRF0KAwdMC9UkzAkTfcqeNC/R
	1FQE+mDBvHdOsbpSXrp2CN17KXTNLX+aEN93v/xU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be0b645f-79b08c4c-6efa-4efa-a27d-4d3ef6b81c6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1ba7a5ad67a7355eae96c2ee5c5878540d1d525c2a62bb1a01d87a7d933bd36
Date: Fri, 13 May 2022 15:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652455859

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502E33234
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659880852;
	h=To:Subject:From:Message-Id:Date;
	bh=cNhIywzy/7uP9ASujNYUBAc5R6scjvnwY6AIrcDu+MY=;
	b=QYSY3fLyiAP9YnZFqRNaoLNl2OL+zZAdISXCBRe4vZz4A5I+hlKl5VbtHv2j3IYO
	thol4u7xhTjIQviSSnHnalmLrxirTHjH88w3mt+vgACpWNLvJ/McDDutW6VI8h7VKuU
	4DHDMw0lbJeUvmXZN0ji93CMuILJ8bOpiClyvTuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659880852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cNhIywzy/7uP9ASujNYUBAc5R6scjvnwY6AIrcDu+MY=;
	b=gp/1+M/DFzgi376fddRkfGou9ZAFbe2TifI926AE8+5vqQy9AQSHMUgiXTR2ocMv
	Hs1JAsMmR/1JO+w4nZWT5jNf8xanesHhFyKK66hhvu4Kpn/RqZDW6Hr6iysu5hJv4O/
	a0flUQN3o29eKeH8i0fYQRGWF373LEoEiOFvGbAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182789bcc69-3871ad6f-cf30-4fe7-a852-7b7f49c5eed5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0000c8f297fd7cb56449851f47611e2cd01cdebaef346ed1bb86ee21ce545e60
Date: Sun, 7 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659880852

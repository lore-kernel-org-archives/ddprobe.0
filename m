Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A5146A7
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656892612;
	h=To:Subject:From:Message-Id:Date;
	bh=OJojvvIn4tO6m7hRx9sUXxdDclcbvSj4w+7ijs0N7F8=;
	b=gScaeOcFm8UReoGpfzo12T33o6ZQl9KojZf4qJ8ptBee3X2w5sGlzqnRg3JpcSAD
	VqZteVy+g5jUcbS/Rvht9EtQ1JLKCiFiUnoZRQyM5SGY04B04tL9T4usolXFNvki3fh
	16Zf37AGCGd2rmeJpjulrKkD07MSO7dqoO+kWFGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656892612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OJojvvIn4tO6m7hRx9sUXxdDclcbvSj4w+7ijs0N7F8=;
	b=V4XyWRYwxsKWk/t+bg80dbGNlpopedqCOssFBn8wjw1GzxF5NLJZ3vf0+qo7YU2D
	CgZMJcMLQvpcOv0VtYw0o0VSFuOTFO1myZCiBGqSuGI2ji7Sy7o4Ue6Pc4JcRdKKxQp
	zXUutRIDubL4tlHUL1R72BrowIwUpi5EvwLrIw14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c67edf03-227ad502-ecdb-4392-8237-ef4b1808806f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 658abcedabdc45c25ff433526cf1cde97080fbca0bcb435386ce5e2ec4d3a896
Date: Sun, 3 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656892612

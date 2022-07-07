Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114AD2596
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657223212;
	h=To:Subject:From:Message-Id:Date;
	bh=gHk7pYHt7PwZtq58UJLsgzcYvZea9bGSYpioU00VeWQ=;
	b=V/9TEGnU7tAR4al8DlyaDO8XuZ6YWm6yyzqzEZ0wcozPHCz8kgjXbu08EkFM83wN
	JvPkRNj6qXzi4tOxO4c8R+SUXCwffew91t86QJ3Ni408w9YFXo5lNoSf5ZLDTqui6I7
	zAJAvDOPppBDV/H9UQu1+V+RrZZCxGwOAa4Qe15Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657223212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHk7pYHt7PwZtq58UJLsgzcYvZea9bGSYpioU00VeWQ=;
	b=N0v4s0iISErH3K+bqvgh9tsvQpsnUh8Yw4IZPzqFeTYaFfII+h3ACmGsQDPc6mFI
	QKptf4YRgiARBhGQl5gXexiT3bMzA1qNd0CiQEzXtk9Aq4CYjaqFzzhOvPvDEMb8Wc7
	vBUptarhgloQwt/ZHozVYODbeOAb6sxXGyj2UBEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da336d44-969fa2b0-fb50-4783-a3f3-f97761d71230-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff5f680be4f1e78647e26f18f90ab4d114fb0b2e79c3c5ff6428d7dcc3cf62ce
Date: Thu, 7 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657223212

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945EF3D78
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659915652;
	h=To:Subject:From:Message-Id:Date;
	bh=fI4TmTLP1PSkpiQxHF53EsD04X0WWPOTp8N0cv8BUw0=;
	b=lh2vTkLiZs3fzipiO/VVgQ2HMMa8dYjYA7Ft6hg3r8bzfRpr48AQLMegl6GCMZsu
	gfVXT37Wd82lWl+JA0GGE5c89k6ns3apEmptZLyQO2l5DJ/iBNc95X6Fdgt/6K+L380
	6sZDTn/BEx7yv3H2aT5NbfT/y7+Jqite7ttS9Gi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659915652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fI4TmTLP1PSkpiQxHF53EsD04X0WWPOTp8N0cv8BUw0=;
	b=aFWA2IzWPqvnlHn8yCu8uXKc4XZQi0syCX4zIkGV5qqZ+3HnZ5d6yOJjZOmNZyLa
	xmOsH4U9H6+By7jliFZ664aH6h2lFC0/bhmwIqBJxiwqC+O+SZFAQWF68gWrtMaUiDT
	0RH76fklcqYLbPaNwFOSQnhNKjohNsxDSBZ+tokc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827aaecde4-ea7831c4-db61-45ee-b901-30a8cedcd047-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d16a26c7d3c4c762d192dca0886befb9c4cc3a60eb89cd4bb3c9566767b9e81d
Date: Sun, 7 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659915652

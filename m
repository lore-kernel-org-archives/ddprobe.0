Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0523319A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656211612;
	h=To:Subject:From:Message-Id:Date;
	bh=KsE3pd37pnHOqwgKRPGIugS78UvGvRAptXJAa5vf8LM=;
	b=JtiFguSWwizbXYymc9Zi5QuCv1sv5O7Mn3fpKKFEhkfB2b1k5G5KmLMo1a8C5fnX
	qLnmae7j/fQimHY9LiIVN0je9W00E+8o/eR8kddsFOUMI0atj48vL4YvnMZ10K6C87b
	WUkNYaZEwZurkFYuD/7tzyGNHerdOK7zyJEzDRKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656211612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KsE3pd37pnHOqwgKRPGIugS78UvGvRAptXJAa5vf8LM=;
	b=jZi2qBK38PI9BDU6pjccZxwmi5mzhDc1ZgLeId/y/LG9fZMCb+Mx18Al57LfQDln
	1BtBNLfLqU1fDtsVrEYlF7+zKlgpJptZ5BwTMBgYv2DqgscyRa+oZy0OzvX7irw2FR0
	dmhR4vomUmn5BXrHyQXz8vuI9jmRBfxj1EwKSpB4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819de7a28e-4e88c29e-9777-4e39-bb54-5e27a9a182d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a6006b2ce0fdcbde7362694f9607bbfc02c46b85397a338d9dad3c05f11cd17
Date: Sun, 26 Jun 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656211612

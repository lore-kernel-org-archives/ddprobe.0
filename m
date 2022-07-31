Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B48928F6
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659273652;
	h=To:Subject:From:Message-Id:Date;
	bh=eHRa+cjA7QOqTvI0uMB9Ft29nKbh1Lv8Y3Fl3TYjUfg=;
	b=HQHhf9EnPlx6BtYpiIBoaDRoQLndvWI09np5MWHM+Vg5W1ocAXf4iNj8TaIVHuJC
	5GW8Wt6pL7nq9jhOaiHfAHDIapETEtfjB52eO+OELFk6jwwXqvIUVqtYwrKUUr03sKR
	4IvwOTdLkweLGc/BgpMkPnKa1iVfs6bkomAideEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659273652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eHRa+cjA7QOqTvI0uMB9Ft29nKbh1Lv8Y3Fl3TYjUfg=;
	b=eNSsfRiXj2IfZCBozJ+yTRLo3UkD7LCq3nbnLNBZ0PfSfL0in8Ayib7wG4sCv+D0
	2WFl9UBNg3q0s0yFgbNJiZi4laJvmGbwYO1B/1pT+YvvFzRSHj1PRdRhbvIwDbv/+ou
	G5zfu8W5+jwBSDVAQ4hLeax2zhnp6d7wqkxIgmKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182546aa97b-ad9af2a7-9b41-4995-bcfb-b13a78ec75b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4418cb9ef1fc4218ce17c12f9836c06453b9f5df46b071d8d70f4fa57c016b7f
Date: Sun, 31 Jul 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659273652

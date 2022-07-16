Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F44665B
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657993612;
	h=To:Subject:From:Message-Id:Date;
	bh=VQ825GVZpdzkg4G8aPnPAM31ERF6O+pq8ZdpePFIAEU=;
	b=OX8Ua61SPWqaCIQdukMccoe4IjtXoGUGWhkyJVfRAiqzgZ8rb73TpXGJY7hqTnTH
	nuvuu2Z56VftBJlrVLhSWJspQEM8D0T7be49NctPBGuQI0soXGfl7g7BYVhwJ7ngFtQ
	hzb1Tc1sPmfA8vkRmSh+dyAUZnqOSjjl94LpjdDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657993612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VQ825GVZpdzkg4G8aPnPAM31ERF6O+pq8ZdpePFIAEU=;
	b=YsfDtm2z8HXFbv6L3APQ/KpnIUPcC2YniN+ZKJnf6eyn0kV49z8kM4rLZOR1Lkxx
	VkYOcyqQOUEvveyC1hIWiaKVWLEubbnUW6tx9zS054x9Rb5DgrHO+mRzcRB5iQtud6j
	AgyEz/Gtg9XmZS5t63I3glHXaWTm0iEA3wSAcWas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182081ecc0f-72c0242b-5353-439a-b02b-f5b9d75346ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16d360e8235e956e1ea45958ce30cc14c88f51bd6c8ed6dff91749d3821ea57e
Date: Sat, 16 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657993612

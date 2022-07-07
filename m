Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184AE367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657162612;
	h=To:Subject:From:Message-Id:Date;
	bh=TXS6kZHey+iaKteZn2KnmlpyYr9jxVbFcqEJ06BOM2c=;
	b=NvGOrQU05BaElymLkhFyrK3bfeLuHU3FAXwLjWMoENdpiUcQbjmH8BcgQM0FWgzS
	Ru8WQ0SQqyLMUCorXB+3Q5MdqoepR/OAy78Xob1IhNWNd6dVIfcaA2OsJntDzdPOtfl
	lTURpD71iZG7aNO2fsDlB8jJwRdpuYYlhuZFzL74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657162612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TXS6kZHey+iaKteZn2KnmlpyYr9jxVbFcqEJ06BOM2c=;
	b=YRksxyvQZQEJoVv0AAcw7ZJKEBAY8Nj4mx0SGMGySgxGsHtQuEOnX+vAuL2g6/EQ
	BvJCIz75RtGWGhSkmgp/AVyf06qVve+P7lGm+AYzk0OAd7vslrfhl19FHZ3kkaLsncx
	HBql+/JStTVXxRX2phiq3NoGgMq0gw9LYx9EM/D0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d696be23-24ee49c4-4e4c-494e-9d38-faebe6866389-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7965e27e035f9372707df22bee49a11b22d53102f29f64e66f6ad69985097c99
Date: Thu, 7 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657162612

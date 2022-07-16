Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A376F36A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657960612;
	h=To:Subject:From:Message-Id:Date;
	bh=0tlRPskSZY9BghRlnkbk/m2uNsa04t6G7/QZB3bXbxY=;
	b=UXSq6EYShlOA53Y3QyyyefG/AUJDNZo01oYjSzIXyVm7EYyawhJMOHwxjrUIPu/5
	UHdSKkVTyg4ryYcX20ugiHBfMfoqCMEZeLoKWzr6J0/JQ/iKL71ulPO//4Xi5qEHExy
	mSHedQJ8vD3cfZ3dGUYTHuN+2IYLeT74Sl5jK6pY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657960612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0tlRPskSZY9BghRlnkbk/m2uNsa04t6G7/QZB3bXbxY=;
	b=jnFX3eBuAHoPjPxLEouOGZCLKyUB/mdvv8EnLDHGuHz1QpXd7T5QtQSwWmFXMl/X
	ZbInN9BDo+fSSBhH2WHalVeV+ahJm6Rj3s4oDRcYnIr8r/tWBt2rLHXVXjrUZRoze7c
	GiBSXp/YQK+50ai8eeX8FRbeXaOJgrh+LXO+Z3II=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182062741ac-7a432c4e-3528-4695-958b-17076d9c6178-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc774898d677e1a665c9fef8e527fd05360fc31142acc8201b10cf492ba9734e
Date: Sat, 16 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657960612

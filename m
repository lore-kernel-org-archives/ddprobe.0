Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D62E3C2B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657495612;
	h=To:Subject:From:Message-Id:Date;
	bh=1Zu3WdrYtYtM2i02W7HHqfHJvZmz7qImv2PZ4sl425M=;
	b=gLkrInfoIeC/L8zjNx0PBGKpb75jchrwvGDL2ldTzSkQSmJNEeZOXyTo6hVMUaQV
	j0bO4H5atfwrLZKii2XKe4iQQr6KHycVVxJm0jDkgR5YpCEb/woyTjqKHq6Z2ohPPOh
	mQnYyciKa4ZhFf5ZS2TB9gBQE/gfxpqgXzfruB28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657495612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Zu3WdrYtYtM2i02W7HHqfHJvZmz7qImv2PZ4sl425M=;
	b=TRIpqDrPA8rou+wTCefUj9lRPrAOZ1GTca6xL8KDRObmbw0LxPn5v5tv+BCLtxF9
	Qd7b4vHArvTQ9UMLNuD8uCfAwrGNd5ryEUJHJbozM+EtT/qHkGUlNytDb+AqJP3snnX
	dzUGAT6uWEJ8XwYcw8Gv6IMkoQ60/nLpfhmzAw7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea6feb9a-4ee8a109-43af-44ca-a77e-9fe073452400-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7f3c921400359135e5afa98b248571735370089bd5d85c4995e96aa295a1a2e
Date: Sun, 10 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657495612

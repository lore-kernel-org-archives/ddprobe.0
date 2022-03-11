Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF60D2102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647016885;
	h=To:Subject:From:Message-Id:Date;
	bh=BAkTY8YhlOJaG/OLKU7m8sHCq3alPEEUuhP486P+XaM=;
	b=UDDeZ3Ocjks62B8ZEdVXtJBj7Ywduog9HPbK4aG9R+akf+wmA8oXA2PqaHND2ZcP
	POkHg9mja500D3VvB38XWVB3MQ+1Mlxs2HuERaU3LwO2TXRQ9+7OOoBTNHm4k7EczTB
	/BdesHYJm3QJ6Z9g1TrAX22cKifqsPQkToMIaC9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647016885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BAkTY8YhlOJaG/OLKU7m8sHCq3alPEEUuhP486P+XaM=;
	b=kBkRXvChUyTYm7R94+KtaDsuD78xkLtGMhWqrZKlbXkNPztmJgQtiC5ZfyWxEO8j
	R9U+CdH+DL27lsiRZSfvvBJNUyCoucU2Wi6hDTVEoErAREQBoQ7uZj46kcjpZMdzq1D
	uQFwaKxxP+FCOsjLt97oEMDEWulEJBmSd618FjZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79db3a6c-eb27e9f7-1a4e-4b3f-8647-2699ced2bb1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f0e96b865966e65481acd2f393b7d205174f690b5d1fa26fe45740a955be576
Date: Fri, 11 Mar 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647016884

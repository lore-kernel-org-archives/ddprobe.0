Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489467E1
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 12:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651063318;
	h=To:Subject:From:Message-Id:Date;
	bh=X1mCwroesWkMijaXpYy8ssucpf5072vAdTNTj/p0iHY=;
	b=inBCkZomfONKF8043GgVvr1Tmntze4+ZoA3th9R3eMzRLRO6aQELr3zMm9icmf8w
	0It+YBF/ijjgfjJ/Bvzn5Ow0986Qoerzwyj9u2CrVWmjte175wre8bLl2wqzxE4rzrg
	dCIH5eGfWVrC1/9ZoJ5Ahu1IV7o3z0ofnLGvLIAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651063318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X1mCwroesWkMijaXpYy8ssucpf5072vAdTNTj/p0iHY=;
	b=bxHcg8M0fQFn3oItO3X4XjT9OrAWODysb3mhpeLwCGGcwwWs3xSMRsa0m6pJfleK
	g/amuUeWcp83N8bUzGtKIwhFbF2AaLAvxXuQUxiclTiQR4x0ymQ1bMIL4qyU4J0Glnf
	S95yBLJU9f3U6qf6eOzMvOJMAL7r+TnmziqC1QwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b0ae72e-cc7eeef3-f09c-4d2b-8318-d8d3968f9c69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d47f3e93728122b82eb142a3957f90127a875d12144047e76f8b786da7144068
Date: Wed, 27 Apr 2022 12:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651063318

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077A77A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656206212;
	h=To:Subject:From:Message-Id:Date;
	bh=orhVfx+EbOuTXiiC+w/zxg5HqDz4pkUrkq2Yl7VhSSs=;
	b=CJSZfF72jq1dWE4HNLGI6oLBopfOr/IficT9Hh5HsyWA4ChdzeGHk5KfWTdlc+bO
	XcGgNzJQ6AjwDO/Da0OydMnp9sEMQcyLsSV01yHURSscOej2zGkWzKYAQv4T0f1aInP
	91WBjqGO6nj80zEQPCO+CyGeuV4dERipAM8WSQMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656206212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=orhVfx+EbOuTXiiC+w/zxg5HqDz4pkUrkq2Yl7VhSSs=;
	b=DG6Yvwn7+EAQUz8Puozw70WJ/lNV4xa8WJMXL3fiX7ufBRORAryu4G52RdF0ikeC
	nLxsOg7/Y9Miv6D8xTJG7C7G8+4ynH/Vl1DymRq7M0H36a4bYEc15ZkFreNB41pslpB
	gpaQ/YkqXxpAK1O1dIkHvxMR2ciFiXSUZL8Kup6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d953ce1-da5b4621-3fbe-48fd-a790-2d7fb109d653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 941b461e93a46f34d288103941b47a7aaf4e59c73fa5a5ff613e0b645e56d01a
Date: Sun, 26 Jun 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656206212

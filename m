Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C7F7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 01:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650764878;
	h=To:Subject:From:Message-Id:Date;
	bh=VsA6dQoXvark0vr7tlnj0BqtnPKxskHjhGNQe77ZOBI=;
	b=FCfsWTwe22CC5tw5/mv+RCns48ZspO8rf2/lXiYK6qgZ8veMFYgzwhY7vE7zIe1V
	a+BHCd/Q+7qf/SwAKPfeOfs5JnZtjiUrENrDj2w/hN7Ai1tSWLmyUbVaGvh3UFV2jQB
	H1bD+KJk3SjPsUHP1RH7rtMcO0yq4OKu7naGzkPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650764878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VsA6dQoXvark0vr7tlnj0BqtnPKxskHjhGNQe77ZOBI=;
	b=RyAU+leA8HNwa0VBC4KtvoJ1nAfkA+KfIwv6AXesWDX7GF5HKDV976xStEW+r090
	OUKHLr8A6w2Lic5AJ/XW7/GnvE4fWFBYenbjpngR8MtyW9r5+EOQ3x5XpsNXe7E/Iln
	Cqc5Y76F64vqRwD9cp6In77Y8pkqdcy5LXN/6uGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180594111cc-131d3715-d060-4268-a89e-3a973d6204d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4946ee5f3a9cdfd96b07e5b98735171a5000556ab972c6bd64b597b515f2e49a
Date: Sun, 24 Apr 2022 01:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650764878

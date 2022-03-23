Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706FB1360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648012884;
	h=To:Subject:From:Message-Id:Date;
	bh=c/7mvnLFArPOam82UAzsgTRESrC+Muro2uipyyonToM=;
	b=RCLZXl9CZ6KKtYvHA6tT1yDOiw/fs1sc8mFWLAL6Rhkd428P/V4q9US2o1fD+ppP
	Px1HNYlLH7LabovXFRyDkswXv4hV2/mdJC5+rDy8a5uT0+vgpYJ7IL9T1rwLW1njOq/
	I9a8bUnlYtkKh+eBI7ddC1PoWCrhFpLTWEU2rA5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648012884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c/7mvnLFArPOam82UAzsgTRESrC+Muro2uipyyonToM=;
	b=aRsx50vIbE8Y3ZoOS+/G8xoLYRiHpR4HyvDsgWlxW1EqLkhlyYcos7S1QTv6Yf7t
	n17fK0bygwEcByBPw9nb5fM1k3p7mur3FQ4a/Cz7AtixmAeFswxckQbZXv19S0mPmvP
	3DivevzS7aVSwWeFW5zuu6FGE3VauBfTvkfG6qKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb538fb11-a781e7a6-7a88-43a8-ab85-c71df5c20d94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c07a62739f21c840c1651b264d25d87e91b91370538fedaae931fb94d712685
Date: Wed, 23 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648012884

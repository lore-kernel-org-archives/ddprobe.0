Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6ECD5CA1
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645359384;
	h=To:Subject:From:Message-Id:Date;
	bh=PBBhOUOOn31hcsZMlfUSY/VPPTOgsQDkSOw+oTIhphM=;
	b=SBSviGzRXsH7fZ1upDHtVzf7+uvNlGPvFZa8G7N2Z5J0GXjyhOdOjA5lfkJJc39X
	jPvbAryIb/sw8zNhe+Iz1x5v2Igz/puK9IrFjhWknnNAzSl7MehxCyLxXhM34cSnewI
	Oqj2f7xRbIvxqfzywSRcVIS/s0+qCCO/7IM7yDkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645359384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PBBhOUOOn31hcsZMlfUSY/VPPTOgsQDkSOw+oTIhphM=;
	b=ccFLYhH81TOlRbbZFz4r2EbjWzXbAygJ59nsTJHNs3nLRxs0X0rlhvYYIuST49Pf
	Ca6HVmt+pckvrU+7f2f5rjFCpCvJTuLXQlKCtyaaVHfB2l/gFjKuO4/ODux5ulIA/g3
	7NVgk9fJMi/0UzzHiyq7pnmNQH3ioCV2oO5VNnwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f170fc8cb-6838f6ec-cea1-4701-a299-cf6a02951e05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef4411dbf66436ef69c0fcefc604132343f1fa3dc32c81af9f8f6d44e77e4f8f
Date: Sun, 20 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645359384

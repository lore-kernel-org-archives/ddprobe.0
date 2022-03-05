Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84447A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646463385;
	h=To:Subject:From:Message-Id:Date;
	bh=ZP6ie+41SxPdhAzGhstOuQuYP2Ez85r8D6vPstWt0d8=;
	b=BG+Aegnd/zf7S1gtCYCch5Qj5ookWgStCbufAsSbb0Ayd1ktSvvQpLGYvJMnf8sO
	VFkbKtCHSowfjj5q5Q8ty3lTDd7S3rf8bBxnELlZjMYDm/BwMCYZqu0zQClpRjbe7/8
	AoHBW2X1Alp1oW4AJVJZ6art42ob8tDesHsIxCrw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646463385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZP6ie+41SxPdhAzGhstOuQuYP2Ez85r8D6vPstWt0d8=;
	b=J8TZ123UFOz+55NhiE3W5liGekuylWRKtmh+XfJJjIDZVz7D2QzB/TkeNqaUWhee
	f7zslIN0GsP+CdpxO8Ui0M6Ok+trV3meQbBPo2zJ1Tdnaxi+qvT9cEFwJcjj7X/2t8+
	qMJMaVfc5wrSsGtoUpqxaxZbOtxrfTUw/jFHkvG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58dd7cdd-d9368f56-af59-46dc-910b-5c71caf26f1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcec4e1edcb3c5b94eb0e2c640bcee91ec45523a247fb3009321d9b2a44c08ee
Date: Sat, 5 Mar 2022 06:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646463384

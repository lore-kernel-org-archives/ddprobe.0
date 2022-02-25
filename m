Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716AF1FDA
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645793484;
	h=To:Subject:From:Message-Id:Date;
	bh=ndzAnyZqv60dx3p72XCskZN1FJYI04Mzhkiu2hOmDqw=;
	b=bwYVTwkq9tuRHJyummHVJ9zur5aSC4Oe9XHzYS+V4p/XfcKBYn0MzVAeYp4OJmF1
	lXtA0dhoc8enbOnBUqneBwCKcCJmaoMdQc0Sx83CrEVV1ysoCGJgGeelhVG1rCN84dE
	m5m165B8kHa2UTu3aKYxAuzoxVB+7tj5kvDUsDms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645793484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ndzAnyZqv60dx3p72XCskZN1FJYI04Mzhkiu2hOmDqw=;
	b=ETXGwRz9LQAtq3w6PPuB2MfB3UPNdHYZDF2F/8Fk9ElBAkSp5p9m0NZL7yItRqpI
	tlPP+O2cxQd9X7jJtNHnXvCQN+1eqb1PE2EmxC790DMWpR//6QryYpdhLEfOqDz2Kee
	TMybC7LH49dp9QBkPg3mnEuJe857H+JyafWCVyHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30ef9fc8-72830fc3-29a6-4896-adae-404c54c3f367-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dae764a30d3149656f29efc32656429d08513e0ddb2d998ec220b92ce15c1564
Date: Fri, 25 Feb 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645793484

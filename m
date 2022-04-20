Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8FF1841
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 12:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650456718;
	h=To:Subject:From:Message-Id:Date;
	bh=L90ThogrdoWj0xgJGR9KcUcBb8fLlAANAwt+BPRXRTk=;
	b=McPnKEaWBIJ2JvqOcQnl7oU2r6Jem9FW0WWvNwmrr1q/V5WmZSJnK5JXFxt0gs8p
	kcNOROJxW19IbSHj/hTeR9ZVIhObr8Da7Vs0IVPXrs1ACQTRP+V3mn1emwT0cEbfpGb
	OGzpPRFigakyic7yJ1HmHa5PF5Mu4sRaTN3OVQnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650456718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L90ThogrdoWj0xgJGR9KcUcBb8fLlAANAwt+BPRXRTk=;
	b=NQo9z9ZAsNWaaVq6BNeTwlc2qeS/Y73wpYUQcqckp96qmvyTVp9WpN8AdRBNHhmw
	8n9l512uU40RoJrFuDN1E6Y3thjaXn4eWTqpKxtetPfYr8+iRwmsGXFQKT65xDzLsPS
	O0UdMsJ8VKFtqARGt5uhnYj/BxdkwalRcLEfZMIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046e2ebb9-da5ec342-cd55-4d36-8aa5-503fb6928d77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a18af385066d18b7cce0e931484bd896cae327a4f37841961ead0e24bdcfcf58
Date: Wed, 20 Apr 2022 12:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650456718

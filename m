Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D733715AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647569485;
	h=To:Subject:From:Message-Id:Date;
	bh=LOwO2p+RpyuXpFTp1CQRfk3HZgw+NpTQj18jHDn/4PQ=;
	b=cV0nU+wGzRC5pYgogAMQ5TDojaSCfnSYkRd/IylSIlYHHfkcXMPWiOrBKvM7UGhP
	mBpnZ09Xnq7agXoHDcIleVy6jH1qVP7HEEmLePAwxmklJJMIIzEu+5tyx9TgZjxsVJc
	8mnuy906u//CFfGfBZRgBX//uSic+Pi8fBO8ahL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647569485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LOwO2p+RpyuXpFTp1CQRfk3HZgw+NpTQj18jHDn/4PQ=;
	b=WY69DrzufLwtloqZ5s82/DGQn1P0B30D9QxMBz89X+7iAQRdzj/y7Nn0zAHXOwp5
	gLqWBpPoMHU2oRuyJhyhzUk/nl+zRxzAaozy1vUvVYt6vc5+zoeJP7Q1kX1nNJNmN58
	3XZIawyhzsWdAeJge/SXo6eyebWptah5zddPa7bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9acb3c13-6f5e24f8-1499-48c0-b07c-f8eb4140d2a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d073cfba5acec5f70d798e02ab0fe510625cf579dd54a14c79c8fceaa118a7ca
Date: Fri, 18 Mar 2022 02:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647569484

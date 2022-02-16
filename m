Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08657C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645009585;
	h=To:Subject:From:Message-Id:Date;
	bh=geqQ0M5ZpDRdoQPgDn1IkJ0q2ykbAXlkqBcY2c96NZA=;
	b=jB1TxaH1PBbWonDm5f6OCkkfPEmMe7CR+/LWPtIB85qZWgKVHWJNrN0ainBTBdU7
	xpd6qNZBiFjPGQYaqXTf0fZ2HpYHmkLOeKezdkxp2whJV5FKWYgAK8lje5GD7qmC5ly
	R2+KKCis56Xqm3n6JL08rwLyTkScvr8OuFUd1hq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645009585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=geqQ0M5ZpDRdoQPgDn1IkJ0q2ykbAXlkqBcY2c96NZA=;
	b=NNpcC2a173S1PTrC1aaghvHKMWUHwyuAOMN3eqKyKU6Ud57WHQc4tiZklymYkqnM
	QrbnjO/EWseEGTWNv/WCKhlXBcziZmN9kYgObpqdBpccdtZZyzhC+nv7iHsZxC37avd
	lL+9gX5aMO3hGcVdhxTiuTfbbJ23vt3OFDgwBTec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0236424b-bce51ab9-4ce4-4fef-bf02-7e89d81d622a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9682f4d4114062e48fcb2686840a4bd31798679c720a7a851fd40585ef824a00
Date: Wed, 16 Feb 2022 11:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645009584

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E111A2D
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 17:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648748158;
	h=To:Subject:From:Message-Id:Date;
	bh=MIzGfTl6mDEIKBUsNuqMPliKl8BOuJ4CvT/Wu92MKxY=;
	b=A3uULaT/EY3NQbFzTI2fyT8pEZm2l1+eqFe0DPs9PSa+y8YI2dytXGQqVQUKtCaF
	uI+8oDBAeQGsPKmBZQ10UH5fcPVVyno7sqhu9nm6CfkgsrDSnq9GVB0K+xxx0bS4DXU
	0KF5BMvXbXSarBzTJxqcuFiFp6f75RDjUibIXgy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648748158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MIzGfTl6mDEIKBUsNuqMPliKl8BOuJ4CvT/Wu92MKxY=;
	b=cVKy38av4y7uB+CuyKfwlyDOe+k1MgYlarg5r0QOCRD8XbMP/ekqaeRVkDhgbSfi
	VwnGNyNt31qroDs3KDmw2h+jD+69ZhIRPfOMsBtHYCa6+of0yqRZXgO4MpMjsQOMU8p
	yUbLGR3j07wpFsA9f6VsuBw5VQiu6Cnnr57SspPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe10c5d95-541acc75-d3c5-4462-97d7-0a1ecfb697c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46910273f8133a975434e137cbcd4bba170af96091168b95502284fd0b88a914
Date: Thu, 31 Mar 2022 17:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648748158

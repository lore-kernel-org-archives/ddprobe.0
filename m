Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E764602
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645127785;
	h=To:Subject:From:Message-Id:Date;
	bh=/eZupQbNSsZDYlv0O9uz4DFtvrcsRsSqpFfucpMiLk0=;
	b=fACsx6mqSSjde+QLibTA6nseABSIrgKIPlm02NnPf8uIADshVzuI/9nea77+T1vu
	MWDYYxG6mYLgMmZrXjH6M/cMb6eR2QMlP7owYY2yqGP3gWe7Q/2sDpzLQJcMxhon8De
	LZnyzvUAKGVRSBJIL/VINBAbRPOsrqMt5Mx3wttY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645127785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/eZupQbNSsZDYlv0O9uz4DFtvrcsRsSqpFfucpMiLk0=;
	b=kfpES/4mWiU9gw5c9DfrWnVEUXdT6Jsg+2LQu9NtAQppK4U9utpKNSSZQTsL0j0x
	CpZskHHua2Hhp8DdVCCFTG5JRS4bXZ56zWrSxvby2d9qCR0hculm/bNOnpmuIhGmW3D
	6H43mNjLGtxvzYRolp34ZnoV2CPoJRldgr7oPuCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0941d9be-af9857d1-031f-491f-8a46-6ce537407b31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66bdf2313c5fa837dcbbb94c7f06343518a5d4789b1d2989e2691c6dd01d716a
Date: Thu, 17 Feb 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645127784

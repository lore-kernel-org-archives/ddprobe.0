Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B028B2F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645948285;
	h=To:Subject:From:Message-Id:Date;
	bh=DRHYNMJZ+l0w0y8ETx+Ily8i8Ksw4ftC3I19bBuMyZM=;
	b=lVbH7+J/HB3GZu7aLgjz21wH0bj2notvIBCYrHVl7kDgMesBeZrHxNFkoyca/JIu
	ZhAx7JTWpaymoxx8gUXTT1EECv1QklSIb20eLilmX7bhoR1EJag0JCPjzqnhdVszRpF
	mlLosnGlYQO7lzExXTC0hMGtgLXUICI5TwUYzQ1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645948285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DRHYNMJZ+l0w0y8ETx+Ily8i8Ksw4ftC3I19bBuMyZM=;
	b=XPMAW9P1pRShMCo/ia0M/1rkF+AHSjCE+HOQa04+equpyTWDU1bczjIcR+npugWf
	zyTF1J7oW6Wb+3f247Ij4T7Xmn5RNJxPodY32Vo5JGNaNh7HYKA5DdRW2q4OaK9whhl
	oWLmWGVIcq6vYzDHwFgKHpPPUtlKnAmcXKaJeoio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a29aff0-bf60b0c4-00ba-42dd-9ac1-56c3dbdedac2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3f1e5085136dd373a3d685cf562731d9462825f5f7e3005ef24b4c0e48d1881
Date: Sun, 27 Feb 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645948284

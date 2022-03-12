Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78389369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647081684;
	h=To:Subject:From:Message-Id:Date;
	bh=AxqIEV1J/yS+mIcMft56YBzQg6+8/+gC8S+G36AH95k=;
	b=NdT+z2KCsEEgI2qqPJVtlekhL8E23wNqGa5OrxZZulUD+q4UBQabvdkEglJFhr5v
	6vLRZ2lgzZXYU48023w1IvoS8Hpwd/3tOK/4WRcjjtCPukM37xOVHMzrDZq/XQIOTKN
	aP1rHzDz4cwvyQNUToES3DSDdTWuLAfT+q+v/Xqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647081684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AxqIEV1J/yS+mIcMft56YBzQg6+8/+gC8S+G36AH95k=;
	b=hDXD1SqLKcwglTvKGfkKhhZXwH5/zff82CJepBp34TBj0PJnvpGZ10ae4VbnQqwm
	Dh0wyuDTtZFbkc+ECkBUrY9COy5min6S8Ox50LoQ/D1r3dRBOT0Kpm85h0nFAWaz6hY
	w1JJDe5FDcZK2jJS7e2JGoqLZdEWeNbBHAVI3N4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7db7ff16-42545a44-f612-42ed-b5fa-818ebb2f1236-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a499c77ffd13161e200129aede580900f0410bfe43185938bb951ad03e04b43c
Date: Sat, 12 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647081684

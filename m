Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803E020F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645420885;
	h=To:Subject:From:Message-Id:Date;
	bh=iMUdjQ6rjIyCQlB/270v3fQZt5wA/nZVBWSBX6FlrN0=;
	b=cgDeWtCHrBfm+DjeyU2A+CZ2KVVq2xDFhCwHRSzuKqDWknREiGGM3bMLtBBrIz0u
	t7JZezoPuhmfdy4w/fTAiyBKPg1SpxAVAl/vXjp3nwZBsAjMq4SSAfv+raUlTAIXH4k
	yzOCWxQnJuyH6EhfH8aQuatF6cSmHr0nYsIHZ6mA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645420885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iMUdjQ6rjIyCQlB/270v3fQZt5wA/nZVBWSBX6FlrN0=;
	b=aFzMwPIrB9THf4WunREM9OJYikUzrrgTS6MOKPhcD4uGuAXQCCPVGruDw1OX1Krc
	i2AmAhuSIB4LUqwwEU56FRRt3rlUZiSsoj8vDv/HPB6nRp0NeiN+Hjxurt514APvjJI
	0MjG6dfVbTX8m/JifwLgEe5o3IcWj7ownsTnnLS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1aba334a-ded17191-f869-4ed5-bf5b-97ddb602c271-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6a7666c55e4c6baca06d5141cc9a8a3f885f1dff0a828eb139d6fbd2805a6b5
Date: Mon, 21 Feb 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645420884

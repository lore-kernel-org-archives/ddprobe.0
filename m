Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84115107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646857285;
	h=To:Subject:From:Message-Id:Date;
	bh=K0xshSz7Hsk+KvyeBZ7y4cSyAujgza91OP0WMUas6UI=;
	b=kKP3DwHHtGQJP5jViBNGdQ9gKGcZn4N8qHJ4vV1XNh8VAK4bcfRaN6iWN5Q4lyyJ
	38oxZCr3WW8R377xDZIzXsKpIipM0V0mso+MCJiVJkMuQCYqX39dhrx5F0KdFNB/auQ
	JMdiSB5wBgXpM6I3+ku4WOlhuJQzBl9VGc7MbJqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646857285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K0xshSz7Hsk+KvyeBZ7y4cSyAujgza91OP0WMUas6UI=;
	b=LQKALIjoIvHyy90DhUG7n1Iq91828y5De9c+TMlOkkO+LcS3A4v9N4sw7iz/GGmQ
	BsDEGM6XarwKmfGWRPvJ4B53HASXp6TkMxik1lAQt1JxMZMJJAwFnVINYYHqM9/jIDH
	QLgikLSUyzqaTgiZ8U/fuL+umYfFfYl5Jol/ZnBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7057ec8d-1124b19b-df31-401b-a187-e1ea483eda63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46fae48c6326160c95a6a9e9b05dee80958a3a87ff5e740a4be79a440ce3fa62
Date: Wed, 9 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646857284

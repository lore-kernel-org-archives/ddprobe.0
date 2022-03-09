Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B39C0647D
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646799385;
	h=To:Subject:From:Message-Id:Date;
	bh=ppfcqZQlOsqnydyd1DkFa95T6G53xgPc6FfZ0Iozc/k=;
	b=TXlCymX87Y/ocy9RcPja9EJOjPf149fr4neuWehclLhKov+c+okA/VyDa78PLxLr
	cu/F8F4VE+Ylkl1FoKyksU5nid7CGqrOZgBvXJnBZrKkQFJ4Qln+ix//dmXbopyDRcU
	Y7xbhw4WiTMIW5cjMQDM2ae4CwhAMjRM6wN+v7CI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646799385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ppfcqZQlOsqnydyd1DkFa95T6G53xgPc6FfZ0Iozc/k=;
	b=VhDLBfIkdBV5ay9LZmeLWNWcrlsVgY9oOTix5sUBoQeUdUG3k2XI/Ea5UxLZi4SX
	iBlFlgFIIibsrjB1oLusS48f9S7g8VIGCA5AKUyJfyndMiM5dL5nXaUm9A3Ng2VOiNw
	riQRv+MjGoMlrgsup0Wdb78y2bIu/xWq0W2c2L34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ce470c9-2fb4977e-801e-4852-87ea-d243b068c96b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23b8e57ee96e877a8e255fdfad5f99c0563afaabeef2b3b2317ee179893c92d6
Date: Wed, 9 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646799384

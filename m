Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A07E1
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658038012;
	h=To:Subject:From:Message-Id:Date;
	bh=lLQ0GdtVEnWtnPKjDg1pZdEwUVr1/24spBXr1l/Lj0c=;
	b=Xmgrlejk+nPXQJTgqoiqwzy0lPAm/vCbsj4ML69hyFiQxiRu6NXSiANVow88SPJq
	k9kanG8/TuONLLR/8CUoXHrG5fqHS3JQq/DyvUPnFacgLVj+X71rveTXKlzWGnN4xfi
	talqhv2muLciPerJ24y7qCZCebyVa+aStB5Y1wCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658038012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLQ0GdtVEnWtnPKjDg1pZdEwUVr1/24spBXr1l/Lj0c=;
	b=TUEbiO/gE/jFrw6DjwR7uzljjkPayUne+yNUYPJmQnIWAOMXyizRzm2RklE3lpjU
	5Cti7WnaJ8XucxvT1KAE/eyBpUa9B7O9XOZ3Jf3DCtYL/0y2ZjFFSXG/RpKM39FxoLa
	4l9olGo78airS3blQUznGnpKNjeZ4K6aQHthEyLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ac449e8-54318b2e-d05c-4e17-acf7-00238020135d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38c6a89be32f68ad002f2ac80d52666d23edef86877750d4a5b0001d28da9ff8
Date: Sun, 17 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658038012

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9830D7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645374084;
	h=To:Subject:From:Message-Id:Date;
	bh=Fk50HCoAvPAZsi0P9yjXN9wee9syMUgvOlC8XIuHWww=;
	b=OBZNb3qODMnS2N/3WZ8yZf8NkTEIpLYbplvY1CugEiejwYwtwy6uznnIz6yMBWAP
	FlxEEBC9su0ZEWz3CccVXg2Yhd/9ESwcEkqmz5OCBWDVBqlWBmIq3tfKVdHjh8m9pLm
	jG6Pv7aNesBILv7Qk7We6+/NwZ98L1CMTjvBbN+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645374084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fk50HCoAvPAZsi0P9yjXN9wee9syMUgvOlC8XIuHWww=;
	b=YP1EVA0+i6/337tPHiqZf5lWl/0kgqg63Xq1i55eq003gfgnpxKun1eb1Tg8HjvH
	pvNqDreYExKeT3lABBt9+SjOmRHG1DFSGkUjZ3kLMPLArA1ya4MI/2fVYg/urCjmMz3
	CUH1n6Qz7XQX7gx0aWRD4yvRUNCsool9XOkrYmSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17f016af-36eaae10-c505-475a-859e-dd9c27e12086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02f1ccb4b99b9b1ae10bbbeccc0654eada7576af946d480ff1bd86d132e9f146
Date: Sun, 20 Feb 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645374084

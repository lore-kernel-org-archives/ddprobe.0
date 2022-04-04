Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1907C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 08:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649061778;
	h=To:Subject:From:Message-Id:Date;
	bh=Ln3PpG6zalK25n1fedpeaH4eb23JNHLC+1ehRsV5EDk=;
	b=VztTkdYUEDiSaVgYMiZLeQLo/jDP8yTDZwDovWrQdEZzPpRYDLZraUH0ik6kHJkM
	COuWLLcIe366mU/y/J18ShShK+cSlA5I9rZwyfYjHdATsdzN7WQVAeNI4wAdb2ng/VY
	oBxijI+bvYU4WYElnbBvOTVd5TnMY5soiqz9tiaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649061778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ln3PpG6zalK25n1fedpeaH4eb23JNHLC+1ehRsV5EDk=;
	b=YJYOWExGv3OcfsA8s+5yU39y/CWBKa9H1vP8jf967j91MOWwzpB/JRLrN05u7VZS
	87uVZg7H8gJngYy1O/3jMqcSlb23duOLYJOGlI/FJIeQdy0wdOfEg2ErzRvDkH30oBp
	9kkT8mHTzZ84PcdD94Q9BzkkQh9R36kQQxvRdcj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff3bdd3f3-91ef09cc-a4bc-4fc3-82f9-13e9c081d961-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b85f6bc05ddebf4d5f32f47c5100928f319f31024e8df8909c7cb1e10931f65
Date: Mon, 4 Apr 2022 08:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649061778

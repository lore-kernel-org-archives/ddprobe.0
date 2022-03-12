Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB728620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647066385;
	h=To:Subject:From:Message-Id:Date;
	bh=DOKql3S4H4kS6f3HmVKspZ6A2uYFwwl8RUkj5jDDXzs=;
	b=G8rYLO6yvzomDppcJxS3jAI/9BUBDt8nsfUXhHLtUMsAwBHS4+o/G5vDVVvsnyDe
	mBl1Hc8aSI5brItBojQHuIt2qOSC9KLB4Tinc31/iy0uC/sa9dlEqhuGzWOVO/IJFfi
	u00CxS2jhseI7PufKSbQcbz7q4b2eNlrUUQzdPe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647066385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DOKql3S4H4kS6f3HmVKspZ6A2uYFwwl8RUkj5jDDXzs=;
	b=JXNeXP7NEAg5rtteMtJyp5gjP58NHKuE72uGIE6QjzKo/pItoJRCyP0TnDbyZteq
	+Po97h+tKIqryC1jP8fIGyAeRgtngGAog3tgju1kNGs+clhq5njfVfPsmSGth45Hiap
	ACBCt+z/bU5pwkRSSgJm0YxE2EfqDIyIl13Vo/nU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cce89c9-804c2b09-0079-4f64-8d5d-2244a443e774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4313b11a7b1c560122b8325d7b841f1329d62ec4f228af60efbdc0f6494cece
Date: Sat, 12 Mar 2022 06:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647066384

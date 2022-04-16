Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036807E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 07:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650092578;
	h=To:Subject:From:Message-Id:Date;
	bh=leLilRrWy0IWkxRxMfT0pVOd3q1mSISyKO3dx72DN2Q=;
	b=LoTooVecwb1wQtD5tatn4FVR2PAUt5fnrw2eefk1vyXVLc2WSs2y8DMWnWTETO6l
	Lu1ACzK4h+mjxGG4Dyty0MQcZ79LXiq+mVTLUqOUjydu0e6kEZrXbzmaPUWAq3ypvFS
	qpBGCHvEE2WSow3q5Zee8ZhnXeggRYgr+WF76pCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650092578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=leLilRrWy0IWkxRxMfT0pVOd3q1mSISyKO3dx72DN2Q=;
	b=Hq7eGYJCHBaIhPxyzrvtEys6PnY8P9z918CqELRS/QopnK/kTw2xbb6KoOWm/xZn
	mOO1rUPmKjZld8UfXwKG21JGUlsS7bM3kybePWPQsU0ai0TmCPyaw9KOr+4yApPhsqW
	h7E8leFS8RQkP8z660L9ryjJLafehFzqIYoiIkiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180312e95c6-e67489cf-97ac-4d55-b13b-dcaf5967195a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37367f92e695f64e4011dbdf797163e18988fcd1589f8be00125aaebd6329bfa
Date: Sat, 16 Apr 2022 07:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650092578

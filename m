Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AC8161
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645354285;
	h=To:Subject:From:Message-Id:Date;
	bh=/vQpvwVKQvSoUCmTCIKEBAk3aTa/15wf0LilAyYN+1c=;
	b=KAgkP6YvgRxnHo7/rVFAOdgieSgGffoI8MpDeMFxEEdIRwI1Mx9u5Ta+tBFbqohc
	Et94sFfILztmQbJ3E3GyjeEZJL9573mr8+HaDYiOBIZl8+hVEQz0dGy+cwIR4BgKama
	QTKdHzrrjyUBjeabSR+e9oQYHE51VarXww5yjOoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645354285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/vQpvwVKQvSoUCmTCIKEBAk3aTa/15wf0LilAyYN+1c=;
	b=jv+r4BHWanA+ZAqaa4x6LIFfnAiIPZYSTZhVAYHDUKIsWwoFiYz0nktL8WTsYLz9
	bPZvEFlOiteRCYK1gytVUnRW2awUH8KFUd5IZ4Hdoz3N/rgQtDgYn+nA2SYNddNPufw
	tFKei/InP/3C6Fd2nh/nkcuv1C4wQ/WpIwphdIXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16c1f6f2-62d1e7a3-08f5-49a8-870a-44612ba363ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f91ede19b394bc2ef46b7be20254839ceb3e45b1d4f5a462db1a5854e753ce9
Date: Sun, 20 Feb 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645354284

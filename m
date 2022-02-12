Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899E42118
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 14:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644676242;
	h=To:Subject:From:Message-Id:Date;
	bh=RLGfnVOA0N5h4UZTHKuKu+jaAEg9JML04V8YUdKbXMw=;
	b=BAOX7PVntjoX34rlqovqQWr97LG/zNg8PIy2Uu+aRt4Reo7wFUXm94xARJRSfEAS
	7YDcfgX///cU3xFJd7Tcv5/Ws2NjCvxOm1h7dS7xmNBoU6XOrJkYZFwl3KedXRE0IlC
	Z+3/PlQh1tsqbjPtSKyquWq/LDRIAVrmOw0Dycrw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644676242;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLGfnVOA0N5h4UZTHKuKu+jaAEg9JML04V8YUdKbXMw=;
	b=bYglczroLI6Ynfgwum+YPyuLHZxOeBbcUcBGgSJ41W1snqh5PdIhy3QyfiLTzkJn
	qBqaMHEdjIIZ05qKl1trHv3cy3EBeFQ2DniD1rOzOtqEDEFMeu/2ynEv+bGuaJ6/M+j
	a9LgTgUpfEd/ccEHiAMgUo4mxU2LFGQc2atCmC6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee57dd04-d63bbd92-8b7d-46cc-aa6c-de22cecb8de7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 709feb3e890fe38b99f1e53fee7eae385b3f5b438434d15764f1795c1e162b66
Date: Sat, 12 Feb 2022 14:30:42 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644676242

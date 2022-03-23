Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85546614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648057284;
	h=To:Subject:From:Message-Id:Date;
	bh=Ka9lJ+7gr68kUlRotqL99gGUV6L29abO2UkFFiwC904=;
	b=deHTLrYMpyc6mNqacFyyyrnhozuMYmIuok5h1xm8KMgVZzPfWIGle9eL2+XZCJpz
	rxrwfYO+2Hzv9QRFw6O8OuMPMAaucw5/fqT6ew06EglhG4k5tBuW1idSRlSToIgdTs6
	40MlTSwiUaQd16wxDJ2v8k0mHDTr55pXZyYuGxK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648057284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ka9lJ+7gr68kUlRotqL99gGUV6L29abO2UkFFiwC904=;
	b=PL4SEdhz7R4q51BE8vAMmWze6iq3MKVt+MXSIQewEDphWsgPmpdczwzYXr8An4pp
	q06ogLEtmFHCtqsbrMfMgQaDwMoet6wvS14O7xmIa8nlyDG/jslwVdlPkqjVrcBLdlX
	zWaOwYSff3iS7p5PwpXGsUN4fx8CBwTBxshBp1TE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7de78b0-59c8821c-33d5-431d-9af1-9a3b1c908663-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef6c8e46917fadc0e0ee6a334a3e8345c5119507282437968e8a315bf0f5fce2
Date: Wed, 23 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648057284

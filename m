Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234F87C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657001212;
	h=To:Subject:From:Message-Id:Date;
	bh=3iSpKKtxavqkY0o5f+MTcMAzx0QBkvoSkY1511Vrvrc=;
	b=DRlR5WuaP4KiV4+COnuYrv5jccgsiOdzR78wQ0DEFJmBVz5xWj1jL1aMhkol3PZ1
	/hdhUBqUfY85ErBwO5WnSXyPH4FbdZX3Otu4WjZ4TOrvBLNIJgahQXnLFuabaIIUPJX
	/hmAy8OZAs0PEXdrLOwfMw54/4IUoowpXjmWafPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657001212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3iSpKKtxavqkY0o5f+MTcMAzx0QBkvoSkY1511Vrvrc=;
	b=SOWAI4y6s51q2OhaaEaaznh4KBekZ0h9qDHGSdIdAaF/XrcRHNI7ilzAEHRAAWwi
	xVkjvUUEAH4Zgl6STTRoWrAYxnu1hp9yo4rYXjHWJfVYauf4RLpVHCUTsJB+iZK1WNV
	tsqiDXs8Lqp3hVRNWcVd5lFuu0O/4b4dJK0sTwbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ccf7f95a-5dc5ddca-7f5e-490e-be37-8db37cba318c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92fcf95ef5cb1316bf9e429d58260a91453138b142a999dc239f429ea416eaf7
Date: Tue, 5 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657001212

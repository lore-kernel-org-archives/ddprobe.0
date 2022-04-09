Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB747A31
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 17:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649524138;
	h=To:Subject:From:Message-Id:Date;
	bh=U0d7ksY6l49Otsw7T3gHpCxDE+a5shE1bP+ABtFfAH8=;
	b=lfp4oDfthAToSmYrPf33MDmFq+3OtP07G5xG03mbkJR2QiZCcrfGahbx+dD5InCG
	CGan8gJ2HeTQ7i2jQnUQwcuCBVkuL7EG+mOtMYdLFl6CVqXvqhoR4BkwtTnYFqd94bB
	AF5H/HWZcQSV7AsQOtS/KwJi76zwzgs+8A/2Nzq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649524138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0d7ksY6l49Otsw7T3gHpCxDE+a5shE1bP+ABtFfAH8=;
	b=Pc+mRWftI8dKGs06T4s9H6NnnLMIEKHoWj1jhMVnTaUd1GmJsOCS8NbJkFZ6ZCb7
	d5XlJsk1mtH36tJJjm6vwn58ZKHEXpZKvw4ImjAaBQbiW42HWB+C4FVRIti6arInMB4
	EYcuJkP+mcliwrmv3CLU/2tkQDPZIwWXop7xOEMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f4ce115-0968f29c-ae0b-48e5-87f4-c84cf1f3d964-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1269e373ab92a204d9e1a07a793d9ebd3a2ba6af63e1ea07329dd38f9b88a568
Date: Sat, 9 Apr 2022 17:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649524138

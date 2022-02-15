Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BC5116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644902485;
	h=To:Subject:From:Message-Id:Date;
	bh=oxcLoYhZr1swHjLSRkjODpvlfWlp2hH0xy2JjU7gxag=;
	b=RPg5ewXo2m+d2K0SfWQVvdlRfycOVHyzAViHGY++aMzC/hiWLAQHfr2R79C6zC6y
	9E9+weEHYhsBx5w+iJnWUJZBxvJA8Qz/4hDzLhtDYjKDdD0/QKNp9Bz7Rkng2+4g5/Y
	Iql2qcrjHlDO1S7royOxuW4s2bmezWTBpsVGV2HU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644902485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxcLoYhZr1swHjLSRkjODpvlfWlp2hH0xy2JjU7gxag=;
	b=LP7GgufSabHLkb/pqGV1HshE45JnW5jQMUgJq0OjITKu7pHIvP/l4Kp2z1oKfCDS
	8shbEBpoHzc3uQgpcS4Y+S80q6NTgz3sFif4Hvk14ynrpV4fDrxyNHE15n5K1OjDehk
	YTR2+6ChcUSpvN6zef90JT4BEAYqrjC6K9ASMgqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbd40b36-cf7b672e-baa7-40a6-af8d-da094b95aea6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4316aa9455e3f8ec88bfa4d7de700685dc124364623d2d40fc184ded614e831
Date: Tue, 15 Feb 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644902484

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24116364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 10:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644746446;
	h=To:Subject:From:Message-Id:Date;
	bh=v0JB3IlS1364dc6i1SYnov/WBuRQYitvochNtMYJWM8=;
	b=AZcXn8jyiUfDpMslW98mF7fZzvvcUkLS7CC1CWodZ/MEX3+WbgrI4n5KS5fvdBW9
	Yb08mYgCpReTKCpei7OrSO0A8HRQaqmGOcEK8uUyiX0v/5jG+EiXuvMTmmf31Aq38YI
	+d0I1J+cucnUhVb3aZTGCvm0Fl4V994N0YybvA7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644746446;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v0JB3IlS1364dc6i1SYnov/WBuRQYitvochNtMYJWM8=;
	b=Uya/s95pqtWdMWnbxediZLd0p3mkPdvrRAqEclWDvbKgqGSMmXPGKrN6ankXqbGO
	Nb6HoqwBIrqI0z/Q/NtAmPL4G/TF14/TTbKkWtDST0NC3/lvcoC3AoszdSE9h4mp083
	hKbDtQkmDudhWkLPIc9MAVu+corVlQSnhyOk0pSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef28715f3-5ff70ac1-fc6b-4ea7-beee-af4522480aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 504375ea86bb3763673afba174bfda40d3e4ac053f2122a8f0fb3886212ff04f
Date: Sun, 13 Feb 2022 10:00:46 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644746446

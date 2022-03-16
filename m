Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD27469B
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647395484;
	h=To:Subject:From:Message-Id:Date;
	bh=CXYgOwG7uSsZrnH50z7x4DIrh50JIOQeETO9MaN4/Fc=;
	b=d6EfZOhkklSiM7I6GlUjA1Dw7hPJK2sul5D6atHFwA7qN+hhcX8TzYqULn9c0wVE
	BRpAiDrjATsWkrT63OrLlITgFrypy1wtLb7aYdt0DsVSYytsK9xhvczWGScuiIxvD6b
	WweTtdlifjQgqbXw4F8RPQkOFdwZIgRtXPBAskzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647395484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CXYgOwG7uSsZrnH50z7x4DIrh50JIOQeETO9MaN4/Fc=;
	b=Xh/SfB6HOl9MYdPwCsRxnNCY8rDTTViRd2i8izYwmgODIhKBI8rNt4bxelJy1fXO
	gWj0y8WvLivUI1gUDJ8+bd677luGCpEOVzdGBWyM3rQ27sEtppondF3jPmEVas5j6t5
	N7SgZMQLkmai6pCP+MR8vAsmhnSnrdUPbZqxsxEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f906c3465-6e8f73a2-be62-4590-9b1e-3a23bafbd10f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b6d1782310047b63041a9a9772d83a27a4d1c76aa2a9f804fd513b7026cc723
Date: Wed, 16 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647395484

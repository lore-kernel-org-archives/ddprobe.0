Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9947D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 21:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644614411;
	h=To:Subject:From:Message-Id:Date;
	bh=IlLkaR0uPq2kiwtkluLyCUrKyk6YnTUgmMBJ4A5hK1c=;
	b=N8eD1qBR9FnplBE0S9BK3QCDWwN1XxvW2gfMumLlNHki93WFvnR+mPv9xZB0Tjp3
	0ir7fS6DWvCQP0DKlnjfGyLeDX1LCE9GFHMeoSuAarlekbHqxPtuwNzj+Mv0i/k1Nr4
	Tvt3FybeNV7OXfTSAZrrpsb7BiuUYLBRXQavH0RM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644614411;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IlLkaR0uPq2kiwtkluLyCUrKyk6YnTUgmMBJ4A5hK1c=;
	b=d4US4pjNCx6Kr9RC4l2QtiUdlL0nyuLJx3H3fpCkvPiUZukvvh265GV63q7hNdRw
	JYrrCwJbabJMOzk1QK2yZEUUh7vOHRqt+Y+rTI8GGd9ysvOpr/Y8aROCVhS0jxECTlK
	zrD8XlWGvBGtSiJrbEjAIp/vJqlTaaixSzCUP4O8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeaa863d4-aae50786-3581-4ce9-86a7-e8ec46fb67cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a04db94e98e1df67d5b5a89cf9985326cb08ad9e4f83634db2ea38de83015d4
Date: Fri, 11 Feb 2022 21:20:11 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644614410

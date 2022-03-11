Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749D27E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646981785;
	h=To:Subject:From:Message-Id:Date;
	bh=5IHUIYP3l4Q0icg65WSzsTJU42F+dHAVOLj45Jlw9is=;
	b=mEwmFRREB6nBnWj/UYwKX3r4ucFztnDXf5BIjovnqUPo5KHBv+ZbKb9mBz/ABGMf
	lmEMUvTbq3au1hztcd1kIq/LeH0maxc72Mx45niiEzvBbahASiD6pZLrt4WbDYoTSTN
	zg3rxShVs7t5kJhmHfCmzN4tSsScid9gBC3gUJ1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646981785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5IHUIYP3l4Q0icg65WSzsTJU42F+dHAVOLj45Jlw9is=;
	b=AyI7amF7RcNfgWNGFd69x4KFag88FdW6PidBuZNeGdXmiKcjk++YjPv32QVrf6yU
	plKapnfHucY160+mO0EhC4jvw7gv97NbkQDvXK3Bs1wGRN/RfIQFUyYoRQ4iGXvsuAI
	8eFIpTmLVxKZNSYbtuAY0kZnme+jPL2UNiDvYT9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77c3a4b8-93c0ea69-4e54-4939-9478-dd2ef83079f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe127d7061dfebb16dfc9611a207c99af9cdbaca6e8e113032e3ad68dd07815a
Date: Fri, 11 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646981784

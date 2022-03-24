Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226017E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 23:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648163338;
	h=To:Subject:From:Message-Id:Date;
	bh=+gKGR3/ZOffmxbUOf1n/94IP8Slu/AGejlCf5rebR5s=;
	b=ZB/0qOr1ep7XsPJB12WQDictGoM0/A0jtaAQP7c7cZluUjtVb5EaSd08S1E1ZsBk
	yL6rQ7VdfDeGVkOE9wLwnzLwDCQ6kIO+TKJC0FdTtXNmsYLgb+cxQiyerS0adGp+p3C
	p4RrgCsVNcA0PCV8trVm3dHTztBHXP5yn7Re8I1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648163338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gKGR3/ZOffmxbUOf1n/94IP8Slu/AGejlCf5rebR5s=;
	b=Y0Fb2MkqpNgC6snRJY3bxGxCjhJKQWX8enP9i78UY1P652VrWymyeAQ52nHPlWW1
	epJ0P/iUMfmiL+FvEHLRq6ULNsb0dwlI8iwyJUR+bOy+p/XuFTSOtwlaaC1Tu1AHhiD
	Cf+56j97a0PYehMZC0sQD5i4B9VLmHagUdzp1bGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe30b823-a6e709f7-5f94-48d6-9f06-73dc8de47aaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23f74434e80bc7092c62ef5c4714ed984706b3bff44c2ec14fa972c96f41d477
Date: Thu, 24 Mar 2022 23:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648163338

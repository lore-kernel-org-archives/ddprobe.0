Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F85D2F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647102684;
	h=To:Subject:From:Message-Id:Date;
	bh=G1RVdXpo/lBzxXBRIDM+xlUB6HdjSuvbDnuiMX+ny9U=;
	b=ht3ZtsRfme0W0KkDobgMTaMnRCIQsQYYO3kyj4PcJQtiblx8FyOS/DlXvKyiAZT9
	Sgt94zF6ua8HkMt9tfcya6f8rKICYoU+sFlkRe2wADI/ghUOx7xdam56gvCJOkoSpbQ
	ch2NLbiyr6WU9W9p/93sNNE2FBs36LypCoCSJ5fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647102684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1RVdXpo/lBzxXBRIDM+xlUB6HdjSuvbDnuiMX+ny9U=;
	b=jIGx/DjmrI6K9XUfQ08HRAtiRi25QjmYtdbTYmN8t8/MvhS5Cm3k0J1vxxlEhs7/
	yNPZ9Ryxlvkx8u/S+NHHzMjgcTLj/so2j81zfoZ8ZTZqWQfZdZObTxNaiTTGb2Mai41
	m2C8PzSi5Oyelmh1c7qSNrYM9tBLqu5o4lFDGLQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ef86e66-548f910c-261c-4fb5-9756-0d035bfd7559-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 191f87b19cfd9ea4d524dc216848ddc79759eada741cf10b61d09e95a2824383
Date: Sat, 12 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647102684

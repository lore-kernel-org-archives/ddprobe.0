Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678D01FCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 17:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650561238;
	h=To:Subject:From:Message-Id:Date;
	bh=GT3acnb+KYJDHSdgvydTzGN9KLU8qqS17IDyNQUtfng=;
	b=lsusPFnEExqDO9r0qh1huezEN2Zd6W1kDQMkuMw1r4jdDdO4FmmUxsN2Mdpj/4e6
	e9VzaqNLn+gvTBOo/VcbFb+vSMAC8itVPMnxx/5W4vto21aaNoF3smIjZqHNYzp/H1t
	GQ0Wxza1I8im3Q1t8Sswv6TjvIUKwP5sGQh3hx94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650561238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GT3acnb+KYJDHSdgvydTzGN9KLU8qqS17IDyNQUtfng=;
	b=OzVp8z5rr9HmEQnfq1oR1cWMseMu1BjoSjrU94JXE6afCZfJNJhOJOKDGti6fupz
	VjK9hOfxN2JUQTvWx5kxigOQwhCBZiSAmkJ+0YVvUvxuLifzD6M8dqyZ4W7fXVlVu+d
	s6mgZ0ObwjKgXhuB4P4ykJOw3MinSAN45qxr7wgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804d1dc536-71d52abe-0b4d-4517-9eea-885f8f6c1f20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8130ab8f15f537961d735af7c1871debd3be7162ddb4223783011c09563678ca
Date: Thu, 21 Apr 2022 17:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650561238

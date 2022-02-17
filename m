Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BD74373
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645121784;
	h=To:Subject:From:Message-Id:Date;
	bh=X4hTMgCYLu5hNzJZbMiFG+gfgvkEjCV1zXn8Ihtl95w=;
	b=AKsHwD3T87+6w6O6R3t5Ky/s7rC+PtKbalctMNBvC1lEU2OoxtcUH+A8AJnh4djf
	kHdUHu0oTrw/ZSrF5WTwEocSJPX03408CzskjJan6M8EAk7J0H3uHyuQ0uQOHvngMG8
	4QwL6POkVuCJ3N9g2YAttkr7bCltVdh6LSzR6508=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645121784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X4hTMgCYLu5hNzJZbMiFG+gfgvkEjCV1zXn8Ihtl95w=;
	b=iuUDBrSgO9MqvKZ3Tc/H+J4CsmhUKGAHEOrgKd6MO/4PW8g9zwpIKI6zs+gk2TLO
	Whw7v/nemzIeojIrymOmMlu23CYOYGUWnWONJxe2lPPxBg7OW5PzGszkQQEn1TVH/72
	o0uT1BFUhn1A2xXhNofu6sjBKVnZxx1QbVD8L2Mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08e64bdf-74a1fbf8-39fa-4820-8a70-6713279a4d13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dcb9a9919017267085a72e8018e1275c4ca420abb43ac0493ffc957d12a188e
Date: Thu, 17 Feb 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645121784

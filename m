Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE702F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645946185;
	h=To:Subject:From:Message-Id:Date;
	bh=wr3N6z2y8fqWPHOzKlUrnA+gwA+zIrmd3wydScrivkk=;
	b=gJ6F/y4MbDi3F+uCDZFjIz4nQKfWhTE9RuTGGieghNwyEBwS89WkWqhbq6piOPfs
	Uh7dM/nNvucZNO7pqBTBt3QLNHAKQXnVmraz6XWHOoWPPGp5DF4GQrwCqHurCTknxwM
	RstvPo5DbPy21tDKqlPjKf4Xu3wnKF1GIhot3PGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645946185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wr3N6z2y8fqWPHOzKlUrnA+gwA+zIrmd3wydScrivkk=;
	b=fzfPXwO1IYXYUTVcgtzrD+YUTzianfCFaoh0j9NMRFmnLO04n5yIhVIz2NoJgz85
	8O6MuVL38bwsmsK1CR0TJIe9/HPFoclebpqEnyT5xizeeVwnGgopL+gjaHXHn/16FgF
	yrN5g9wpPfWRsEU0B0nuUL6x6SOByBsP9uZokoEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a09a4e1-8613d921-7755-4e6a-bdb7-3956d09996c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9e631d7a969f01c6cc14453c54d7bf0d1af29303d1e5a2f91a411b49e4b2421
Date: Sun, 27 Feb 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645946184

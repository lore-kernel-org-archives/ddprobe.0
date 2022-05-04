Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB99210C
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 09:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651655338;
	h=To:Subject:From:Message-Id:Date;
	bh=Y5DSOsKsb9cgQOvpeJP7LhOfI6FSx6YfzVlwL30NE0I=;
	b=gw32r3BbE3+A8i349uhiH0P9JH0YG3g8pfm/hWWS9Q4/bhHdnkpjvdlsg2mtoI0Q
	0Am2DHqxQKy2cS+NYHEtXqLQrJl0vmzWoyKy+gCWRuiVAYrr6dPFAs/cEkXAAf22CIY
	QFrNvAm+bWw+mn79uHea4VuxEqtLxL2dNKsAmFb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651655338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y5DSOsKsb9cgQOvpeJP7LhOfI6FSx6YfzVlwL30NE0I=;
	b=XisbXqUjy3G3YULbr7+8WBaqMH80djjyLYYnJtz/77rUAlcwPQT1PJYBCSZ/3ZYD
	ImI4jG2GeEfiV1uzFvymGlidYHiDblfNOO4QshUwRjSilBXtEFcg4Ubxh30XeVjhv5M
	0H3FpECTZW1dFOcYoCbcRzc1WzcdA5ZSrco3SLQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808e54690a-9416c1c6-f0af-49d1-8ec5-61a9b3cb94dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93d26f2524bcdc353a799d58eae333b640d47dc76616fc161d9753832bfd7089
Date: Wed, 4 May 2022 09:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651655338

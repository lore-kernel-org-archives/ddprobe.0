Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E515EED6
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645672585;
	h=To:Subject:From:Message-Id:Date;
	bh=nTIU4y0A052N8hx/lHsuyhe7DI9fxH3rqYd04KhfOtk=;
	b=WYqOwYaMH8+uowBWmJQKYpnowHQ2cI5JydsP8LzDZCoAEbjUEVOXulDt5rvxTwps
	Q4t6Azt0S++H3CPenDtrjMyWpNChKqgA1BZTHBteh9+1yjCmeYuBx6mr4d7h+9V9JUl
	UeUcuWeHSvx4EXIrIPSWnxQYEShYF+eUCUr+bYvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645672585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nTIU4y0A052N8hx/lHsuyhe7DI9fxH3rqYd04KhfOtk=;
	b=GuTPTV7rcjv61dtU0ksnMCsPFUR66Dqa7VndEtcFi1cl+F0kUpw4BKrlwcbqV7RG
	j2huQY+R6vGh2xMa/1iqwqNzEH6cLj9J8YJ2TOJLWR+T97stiKX+nVygszrBDCCHcsl
	uafsFVsF9SUIO6c7JppkTis0QUG8rzbshH9dZkXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29bad66c-63efd541-f4eb-4aaf-b491-65267c613585-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 540fe6dfa316c86aba70412969f243e4da33036d183612a03cff6f545862dfca
Date: Thu, 24 Feb 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645672584

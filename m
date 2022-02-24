Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FF56ABC
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645743085;
	h=To:Subject:From:Message-Id:Date;
	bh=DqNB9XGrW5Uq9Cd1GO/nOijcaKqkK6piL56lkiLrdU4=;
	b=h7TgEnH+YfKPk7akmz6OESZ6G6/cOKG4/5Ex31ni5Yp+LZ4ngysFd2jjfi2BNJ/1
	qXVAoZYGYdyStK3kI51U8MAPvPNmRf5YlWqg+uSQ+FRYFKl/l34YzRHBEKIb3Ud5X7m
	RheQZtA1Hau+bcDApfYq+y6TaD/xTCQDZINAQPi8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645743085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DqNB9XGrW5Uq9Cd1GO/nOijcaKqkK6piL56lkiLrdU4=;
	b=L4tq+Dvi5zQk/QervJeNoKFxZlI7oM0+KNJe08xwuPRCWb7auyVrdIBywIme8os0
	0YSKasv39Uy9duhtVD0+4K+l0u+zrjw9w3JLnQ5J47jAZ/udrfwUF0wMSpr8DfLnRbe
	k4TD89BjXQaszTUuCLjBqPO7e2nPbEOfp49zRyWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2dee9543-fdfadf65-f4ab-4d30-b5ad-958e30a7ebf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8986967b8a88756e133dfa13f58052722d4c4550370edaa15f73513fc368a68a
Date: Thu, 24 Feb 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645743084

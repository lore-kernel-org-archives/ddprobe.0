Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D147E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646824885;
	h=To:Subject:From:Message-Id:Date;
	bh=gaksMouHNL/WBnv8Bzhwhg9Djp4jj0765pPQBD2t2P4=;
	b=gCoo5nOrarb+FByLHDlG1Soj34smocWYu0tAvzWkbQc0+YWxKk8zmTrMCn/x8O7I
	HSxS9J1UQbBcVPe8i5Sa7yb2yzv4G3rz6CZaV6M59qkH4rYm23MbbFlHtaKqlwwCph8
	scTMFJRox5h+mqZCfbT/iz85gp2RQb9ExNPrCEdY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646824885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gaksMouHNL/WBnv8Bzhwhg9Djp4jj0765pPQBD2t2P4=;
	b=gi8AHMXag+fV2ussi55xq/RJUMv78rGRx6lYxZ2/dVlD9Y+Ov8Hv5AdtYbsDl48X
	2hig5D1sSv87cD9fZouAGxi+2uUrwkthYrbh/K3ZJvWckvvYREQI1ghcawgrjudVheI
	xapiE1fHBV83E3Hn+5hFGxOizPSyH5Qr8E3UKOAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e698a02-5e72fb91-dbba-4a07-9c33-e8714d8c81c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e3a9f7bdd86d50d1a1323d4e13ab7f493cfb87cd223b3ed1c72b2c2395ca594
Date: Wed, 9 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646824884

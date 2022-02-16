Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF51187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645043484;
	h=To:Subject:From:Message-Id:Date;
	bh=6LsKexWlvag9ExeJKWzCHkd/uGyrH01r4jTvqDvJCFU=;
	b=eDYPBH5XaKD9hYTXD9bR8+rYcmczZbPlnIuoNr/IRfifCwdDCFC2Sy/bw+RV2Roe
	/Flzi8bDloOD1gMQo7fQTIxhKFy2B9+DNLBIZ22thrmnP0GBBcG7a9b6CVTT27RucEA
	hSSaO+29615shg2OPHJB4cKcUdbD3Djrsq1f9YBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645043484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6LsKexWlvag9ExeJKWzCHkd/uGyrH01r4jTvqDvJCFU=;
	b=J5Daho/uXgNQdrosZUGR2pPv6NCWH6OYa1gnTSDC7S84/eduhu/uZfSJXsiPcAsX
	bGGazUKNrdn6BvZ8EKpPmlJjk8tReog00p7pAEyJIi8q/znwqyjsVe8ME6t/Jct+SDV
	G7dWAkg0HZQz5iBscfOE4UZ86asOHBJEqYgHG+Bg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f043b8840-49ea0267-cb92-4318-aec7-9a0c04691e57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f87957b9b2c0fe5a1077824174db7c357e7eeef2ccba8b92d98c440f6739fc2
Date: Wed, 16 Feb 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645043484

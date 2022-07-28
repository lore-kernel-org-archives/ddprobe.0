Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B78F1101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659001252;
	h=To:Subject:From:Message-Id:Date;
	bh=xOK/7yxCiS6vft4cyHv+R0WLrbluJffh6xvnvSQg7JU=;
	b=kKYYot2Y9jkK+jj10Rx1qmfko2bZ4XLFArF9SjT8hfluOHQOuY8uULS02eGGlK/Y
	opbyQSAnfw0iUZnmp0iO89CzI2fgk4524Jj8F6p6qWyPnf8lnlBigURB67LAY/cBKCq
	CuirJwLN9FanBIrb/7m39110yxwmkp1Ke+KzWUwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659001252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xOK/7yxCiS6vft4cyHv+R0WLrbluJffh6xvnvSQg7JU=;
	b=NQ+V/aXt8gCRGk/5msLFBf8Eo0jAkdKrynCONFTGsT4CA6K1mE03QqCgggbSlWle
	yxpz4maGWUJv1vMBsIZYTylBLhjWo6gBIsZrfqvqKd3gaBBf4uqa0TOjGoTTCyXvyX7
	TKG6omqC2u4ypZHjDnU/ydvvEc+CewuYpiPKOAn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182442e2af9-c77e5a08-0268-4a12-a03f-b3df38895362-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec3c0589f79c8e55fdb07ecdea9e7abdbc9adcf6dfe84e6040f16220af474f60
Date: Thu, 28 Jul 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659001252

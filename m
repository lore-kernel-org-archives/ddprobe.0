Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4373B29
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645109185;
	h=To:Subject:From:Message-Id:Date;
	bh=U9zqJ2Embef6fCgD8kv6wbyTMGj0Hgk+T/kQRylIyEY=;
	b=ERivGYiQwF8LXnWUyksi1gfXnSSBDqnCSwQ2cn7zN031cEW0NEErZ8cF42I6gC6A
	dRqbfH2fFdnOwQeh6CNItV6YDjobtY/bV2N56D461ZPUzBGPKrd/D4wpQnNAhwrKMH1
	EQa3jmtfvlSqG6PwCAiL1v+VQ9HEM7swGVCr7By8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645109185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9zqJ2Embef6fCgD8kv6wbyTMGj0Hgk+T/kQRylIyEY=;
	b=kKQhIOqx4qqX/dlaruKWtfcM1nBpwG7CXjt8x3BU4+3FX3+o3EH/21zfZkIOfkuy
	Z/srgfvbTB8y0rj3UnX83bIx9RtROp2WXOajj9ASvt1U4eeeKXhOy1edBcMWbeI5rmA
	ZBMR2/r+WNxUtIFnuz4OKntDNmC0gxgllsE038pY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f082608ee-509d53d3-38b5-4546-8cff-0952122b3fc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9559c9e6e3b68f0671b74ccd7e9d8c56f69d1d148c12c750e7b704801ac8bdde
Date: Thu, 17 Feb 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645109184

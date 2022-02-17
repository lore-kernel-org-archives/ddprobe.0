Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6414634
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645139184;
	h=To:Subject:From:Message-Id:Date;
	bh=bHjgCyWIToJRk6u5AQehVFAblPZmD1CH1tHFGRkESlA=;
	b=habQRW/+qHVSgIq+Cp3h0RE7PEIHqH9B/+8v8NcNkabr7y3VAnu/s8v67YO+Eiuv
	AnShdrmF/phuXglyJL2NC1GnDb8Arh944YSbjhCEhES0ofVfo/XkhMJcJTLd+/qXQd1
	MGERzBNc3DDVjIxCDHpIYJRnbq4CayXpHc4Pw/Q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645139184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bHjgCyWIToJRk6u5AQehVFAblPZmD1CH1tHFGRkESlA=;
	b=MRtWAo1JkLIJ4aCVMglYT6+zYv3mFuYlGGo091ihUVUR288PvIULXdwMHW8R0FVS
	7vWRBZmwzPgbS2kMWveqSE9Yh2KU5rf8pq09YYFoeLtcEz2vU6Eamn6e8U/bnp8Rh+0
	G3uEVMJOk+PuC0JWd5uRMzDJZWeGuPoxrcxLvv2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09efcc77-f40a752b-a037-4f58-91f6-441215a88646-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6be84577ccb0fec421b9721e524cc6b2b1ae93d03a2728fd897317663c204f11
Date: Thu, 17 Feb 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645139184

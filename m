Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E55538DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 03:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645154185;
	h=To:Subject:From:Message-Id:Date;
	bh=8yCko5vdWVf39eoxnl6f5uELTjcZiPXWAEUpKakXKZE=;
	b=mqvTnoHP0jkxYoKEnf8oZ2BBCYvITvw4i+hbr2pto13WpzXJQt5k+iTSmT8nLPDI
	LU4Aw84dd2nXxibuYRWYPW2Fr0GwfRCwRKHAsF4s8gtu5LPD9IX++AQ75v/Ae2Y15dr
	M1Rkqy1lTxG73KIUUEpSHmnZBKANFUwKK5i3K/Fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645154185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8yCko5vdWVf39eoxnl6f5uELTjcZiPXWAEUpKakXKZE=;
	b=kqchX+1WBZYi8nwGtInh9WDDssSU3VqC0ozuELJBVVTrCSa/B2fN07sYfK6ATvFE
	qMW4bT8tbHrSJlaJaBhz24PrsdzbQEf5yfFz5rfBZPor8i9svSGazbhbNgzaR1UQgPt
	O3lp7JaLvsYSNw8HPF4TAwElgDSTGClBYOtibrLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ad4ae37-1db0ff62-9bd1-4bbf-a273-6879452af5b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2442ff93b060363e306bc34b8215a44c9d3c27206e7034ae7d4f7bde9b3762ad
Date: Fri, 18 Feb 2022 03:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645154184

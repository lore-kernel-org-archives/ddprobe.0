Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5572A20F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645420284;
	h=To:Subject:From:Message-Id:Date;
	bh=UAZWyHifjLmEaJyw+tBZRJ+Y9IgBZ/OKycsXHmf/1/o=;
	b=ioVXTNQGBoisCYic4MUI6KWMu1kdZpaZVgCj2WoG0K/ffQbehzpHo1GfTExPT18p
	+VMSVpifkCqXZOGf+jQHhiXmC0kaoQEeaHgSOKZhAuOfwOvoGpUv9G+ZN46wYwNQ2+r
	XTH1MYr8EQVTSQVkTY/WMDl2HKsOh0UCyZQEwQtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645420284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UAZWyHifjLmEaJyw+tBZRJ+Y9IgBZ/OKycsXHmf/1/o=;
	b=I5KYPJnkY1H/4MRK5YPT8/YOwICGTBj5eD2GpS64+lNvMQnxyuRqw3c5NBzRYw5T
	cA16fNhzsEa6t8FDr0+VsBCT3G0OtjsK9FP8Y4XzimBtz2d52yTst3sCD5UHdE/OR0H
	Pk4+1hVcluku+A7nkbvIen+Ze0mWA4w4P5udtP/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ab10b57-b5bc41aa-3a79-4bc9-a13e-d97d9fe6019b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70a927350c0e87448ca3cb5132dfe7fcdbe52897a3aa59b33ee492b1b9107fc0
Date: Mon, 21 Feb 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645420284

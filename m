Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E757A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646661684;
	h=To:Subject:From:Message-Id:Date;
	bh=VIZ/WbKCCAt5W/MmtLlQnyNJA6QO+0IO9Oa6p88cYUQ=;
	b=IBi6DkVbW7TwiFmmiUTdUp++MpESHYaGikFJho/MfIucQCzsnmMxaUrOZspWhxtI
	+A0DpTj8Rp/Uwbji6vsHDQTR5Guv8v5gti6uOkBhWwe+SvBzrgbTdgf55OC6hY2tGSs
	QGE28baDIUqamJEVGf+Jl8pjpzr5GcgbB9auFz38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646661684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VIZ/WbKCCAt5W/MmtLlQnyNJA6QO+0IO9Oa6p88cYUQ=;
	b=L8mnW6rm77bBEJ3fafBkTqRn5LHIO/Vt4lDosn0flh0Ev8CHGm59LIb/y9dN7+lx
	00ALlJFmR90/GtW1Vh0N5/PoXFLCXuAd9b165O2Q6qZzUvRUmpX0uQMAD15tPfFw9Vs
	14zHSXspJ5N2R6rg9tm7zOfjXsktJdYdbHyEVjJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64af4df7-de9f9ce9-df84-4455-b102-57552041875f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b48c0a0d05f92dce4b1b37155b303c07b291ba144485e2c8649cd1094187b39
Date: Mon, 7 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646661684

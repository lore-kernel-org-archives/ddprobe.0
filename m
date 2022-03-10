Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEF45A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646948184;
	h=To:Subject:From:Message-Id:Date;
	bh=8cnK4R8r20EDQMERENcjmCNjkXMGi6u624QPB0jni5s=;
	b=VpZ9OUEvycf2aSHMeBuCV3ZumhArPi25XFSN+aczlF6GVbSzUZG1BjoVIfHCOous
	smP0zSOlFKrZspKKoJurttXDa4SLojsMQ6MGyNA4QEzXGKRyU6XjqeqNSgs1yAgQfrs
	g8hkMbwvrSmFjOg2YaMCIo5C7ju88zy4ClSNAx7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646948184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8cnK4R8r20EDQMERENcjmCNjkXMGi6u624QPB0jni5s=;
	b=P6GickSLNq6IMxyTlQbAYeSN24pD85iA3r4DQtofuQv1fv5/nAL3nRFOP9ecd2kV
	wMW19yiSnkvEQW4Y9yJB04B/XKwjQm3AYjdPbIz28OKwUExcewxOt0jQmzMHrwvy3y2
	YEW7Dev7/pwOpv73pyxvBOSQbHfr9uo+QDGWfVf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75c2f2f4-a7b057e7-9553-4b1f-9689-1d8649270260-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eec64c7940d7f1a715eab5d6db1815c1bff205ccc932e00735dff415a5ec1c6
Date: Thu, 10 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646948184

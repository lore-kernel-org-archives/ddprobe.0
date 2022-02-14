Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4086AA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867289;
	h=To:Subject:From:Message-Id:Date;
	bh=yvjLN3lR1PNxQ99zYB3znGrqfrDaog+yQ1HgvXLo+P0=;
	b=TU6tYgTJXmhFb4JfzsMrtXm0mBoFTD7/JLPYx4lklb9UzkoeeHgISoOm2FRIMJUG
	RzBNCfFYQboPnfZVrlxmepTqYeu96SZ/xR2Ekc8RdC60onpAUdFYW8wFoE6rx87u0go
	KoZBGBHGP2JPFXA4P5i2DmATlzFcluQBm0xYBBJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867289;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yvjLN3lR1PNxQ99zYB3znGrqfrDaog+yQ1HgvXLo+P0=;
	b=TjHQFfkq6KUhM6O3LU1JY4xZrzT6FC2t7T+svgXob4wGT738lA6gp99oxBFYqwkX
	SGbqmN1BrsUKKZy9o6Ztpmyg8njopcJpBjrsYrP7dGQ0tg6TuQshqeYOSPrm2Q9L3LW
	Irl0Wim8TKPpQkQMeNXQJ5nQsusoD6ySmn6uzTrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bb0255-3560fd84-148d-43f5-995b-dcf2a8469e36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e23b4c657221b029e12674fbf01d08cd25d2adcd2a5002ff9ce542a434e558e
Date: Mon, 14 Feb 2022 19:34:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867289

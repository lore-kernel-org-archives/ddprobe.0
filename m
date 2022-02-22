Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5937E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645489284;
	h=To:Subject:From:Message-Id:Date;
	bh=WlVbCuAFJRlFTQkWKLzoN8Xe3ta/4DsRSlBDAw3TzOs=;
	b=MQEzJkJb3m7UxkgL0h2irWreLmaMPoko3vy6lEguVPY/6iOTeLs78eITU0OIZCcH
	UP09Gpzwj5iFf1Y0pgqdMxXaz2e2xooW1kF9hmW6KNuMOnoRGJxsYo9DQXDfqxODW3z
	RX23HzDAM0ez4oHcMUK/eTdG8wUnASlYkHibjrz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645489284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WlVbCuAFJRlFTQkWKLzoN8Xe3ta/4DsRSlBDAw3TzOs=;
	b=Q3xZrNBZ2Oo+xD9d9Rq7URPgwrD33tCgivFP4bXhmYzCWk/Ovx2FTVImtLKzOxbS
	dKprY5WAhYy6MbWKZpK3yiB4MzevJ4FRmSSqaplKI+2fSwq+FPPru3mUwludZdKXHkX
	5tt/tDNVpsLJfCxHiBzv8XmIIxypxWiYCLelGcIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ecde6e8-5833c9af-b56e-472a-8b16-ea62ef87ea08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2217d5e0cd3d8e1b37a488416c0bdb79d3538fa5436343b8a89b996e96d7a18c
Date: Tue, 22 Feb 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645489284

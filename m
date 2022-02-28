Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D5E559D
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646053585;
	h=To:Subject:From:Message-Id:Date;
	bh=ipzDrEc+leVp50S7eKtVknmfkoWnrBEJrwo8BQQcyO8=;
	b=gAg70b0CTsvjR44ZVD32jdWrK/h931fCOMxUpIONxbcXZCnO+3guoXBM3PY8wudb
	9exw2LN+9jchcAtEt+EiKMzUxs0uMUg8Zz/ijU+C8LdvhHxzHH69aE9ZXioKKC7UNwJ
	24cm4pcv4D5y3SdPK6gRVSNg5xj5a95YMXM86a3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646053585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipzDrEc+leVp50S7eKtVknmfkoWnrBEJrwo8BQQcyO8=;
	b=gFjaFT1qCzJz5cLOI0BkOcdNxzon/CCfufJFiUVv19s/HwuWHbYhDLz4jdCWHJSX
	K/HT7baxVVLwj/KSNNpVIyjsW8zc6YNk4mmKxc755B1Uk0Vl/+ow87Nr8JEy/Hcanip
	ZEBxkcg2NwxLxoHl1rwiHh0sxfRkDXp0JKndAqYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40706fb6-342f07b7-8c11-4a4b-935e-ffd339683809-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6fd23f50d06a7900c9f9ed20ecd320da96af20cfb811613f6da2f319d9535c9
Date: Mon, 28 Feb 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646053584

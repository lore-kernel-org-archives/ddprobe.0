Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C9C7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646220085;
	h=To:Subject:From:Message-Id:Date;
	bh=sp2ATKx5K5sVcaLvPyT7crf5foumZErcYk7WQ0DqaX4=;
	b=a4x+6h/nG+WCshiaAXMlf8LavoiLWh9c/nSo8RSMvgi1lAYA/EseeZ27tg7arTHO
	8s7F1/JueLJ6p2BF1khUvK7uYPC/C6aws4lP7wiuvb47XWv86veO4EqulnFeQGhRUHO
	hnD05I3QGIQUQmU4PYlvUdzGAJl//zCzYyASSREw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646220085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sp2ATKx5K5sVcaLvPyT7crf5foumZErcYk7WQ0DqaX4=;
	b=hH2eFhDXfgPrqBAouafRltWlYoeOsRRGgNy3LzAv6QyL1uycGvzQctTDvFRgyn3G
	5f2W1m2MhmuuOomubK5JHBth2qzCzxkYWzv+h4Qfx4Nbgr2t9Vip49DlcGf71Kxy6Lv
	7BYHgr17L+yOSan04ErztZP9LCr3zHU9bXxcNHfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a5d0607-5daa2529-265b-4995-90da-f9054e661b35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f78c69914a5e8dc0e7b4661ad749abf61a8c7cde56f73ec58cd6da80918ead3
Date: Wed, 2 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646220084

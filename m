Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641527E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645402585;
	h=To:Subject:From:Message-Id:Date;
	bh=0pR/tCD3XPRJYqC8I7J0uq61x/eLhHdpPAM0nPesIww=;
	b=c08QTHabYN1PbG95YyGwMeUHSRHDlA+2l4JRqHPG6FByAgoYiCkyuHZpQqZ6tPjz
	NPR/J8K3YWKSa0A7eB92ZYudAl9QTvdNDM5bWvqFNh0MbimEl1/C4KnBy9dAiCz06iX
	05RrVEIqIwV4HAys6rzhQWKZj5lXgwtT2gM0IFiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645402585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0pR/tCD3XPRJYqC8I7J0uq61x/eLhHdpPAM0nPesIww=;
	b=VKfcUtXRLaxLzQISgbbzcCahGpEteC5O80PQokzPyo8xupefSA/eRPKttixYd8I4
	YuINgAZo6Ewu9szAJIo2VGVxwRVWnQK22hXtg70aEBbp20n2znt6bVhn8aAWVlNspEF
	fDRrWYQnGvBkuF9DWhsp22R7a0L/JG5g+sldDVP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19a2f6cc-1c6c9363-b3e7-4beb-b05b-2d124e4708c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 371fcc1d8a7813bed9f415b7d5179d512790cd46293a0829e396fc85838435fc
Date: Mon, 21 Feb 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645402584

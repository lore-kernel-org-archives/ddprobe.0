Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407A06136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 22:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646258485;
	h=To:Subject:From:Message-Id:Date;
	bh=X8z5kFftZoS+e8NMzrdi/ja2odX9naDDCF5v4hYGdNI=;
	b=XnrA7rYC9XfQs4HtLkpF2lqAHrGBPJKF+v2IEADsZoyQih1IEp3Vz+QrilJY558K
	KjH5l49f7XCYfIOkbJ8TEtJGGuEkDvp2ZN+rcuxiBbsKrvd4FqvaiPMZRuauUdigteL
	lrbJkShx149ZxmwVTfbTHg/gDTTdBJ1A8OTlXj7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646258485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X8z5kFftZoS+e8NMzrdi/ja2odX9naDDCF5v4hYGdNI=;
	b=R6V+6UJB6vy93MwBkriJMjQh+v4/jw2rWjKYRoaOytepwj0K+XWsxiXGRp/P1rkq
	sS5mN4Y2l+5bCH+jWpTT6p6V4WAVaqyIbDkE3lAqGfXEhiMkaG/eyjhZ4uM58yXiNXP
	PcQ5CqFSiLwDDMGsiGv3X3gbiNttVo8XSpAc5f9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ca6f665-95890fe6-5529-4ef2-89af-fb9d5b802cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb64cdd31d286c9943bbe43666bd1808a22ab35cdfd8f42f093f3d12d7f62fba
Date: Wed, 2 Mar 2022 22:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646258484

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F63C258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647041484;
	h=To:Subject:From:Message-Id:Date;
	bh=zcC9PAlRWlJBqyLsLIhH7GSX/xYdH7JaJOVcUAfESeY=;
	b=PkjIDUtPj/J8PlFntGUIpBQRJv7P9tmXGodbDNUEz9LmbRuC0ngJ/o1e0rWp/G+Z
	fr2MpxlSic8i02Ox3stkhGwys9PgNSPSkUp/r/hjy44lHAVjK31cxcI5mi0p9HScSL0
	64J8REd3ZJ9UCzcIfGFfapZauAr3RbKez6FWqfh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647041484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zcC9PAlRWlJBqyLsLIhH7GSX/xYdH7JaJOVcUAfESeY=;
	b=GYAp3eQyFKUS/clD1x3TeV7cWLl6WrqXyRK9GtlIpabmooPTCXafIprB9SNKrA+i
	dYxqz1H8zGA3m+TPg3CwIw8+GWdOQKaNWdPaG6EDskBGhqLVK+bpGT6iT+Rk8eLNpPg
	TtThiyKmRaFH6fhWrazGVoTfCi9aEzUcXo9uOHuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b5297da-e405dc96-fb6c-4b98-a7df-b75b7eb76cbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e233c08a7df5f212fad75a42335fa221034138d40d8c0969ca1b14d9964c0126
Date: Fri, 11 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647041484

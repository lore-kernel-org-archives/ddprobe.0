Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CAB97A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646895685;
	h=To:Subject:From:Message-Id:Date;
	bh=QqjO+gw+M8PVZBGFhmsknCoUn+v1bUMrqXRu62Bjgt0=;
	b=CkifkJkW3FmBV8Sa9/49Qs91dS7qv4sE7WJwfWsDNtmIRK87iC6VYws9TngCFJ1r
	0y3si7HiKgw2rJm375dOSVDMZD8vhSjj9U0cKMh0ctCyLFn91YAYKBHCa0HZxz5Actj
	npcpff9UvqBzgdTrRncLweIQ9xhC351JXuGwqTBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646895685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QqjO+gw+M8PVZBGFhmsknCoUn+v1bUMrqXRu62Bjgt0=;
	b=Gk5R0BFRmQumnm0p1s9iC+fJ4hKaQQA7VfnhIuR7ndVpSvsV9eWT76gwNxuF0o80
	ANTV+RPxzUVpDNZvOnBVx80MzaulWHgBaSAXfUthtb8skzUM5j1EqjckBtVB2n4HbyG
	ZAvh6Xe8P8SWYqFOdwhl4Dmb64urTxct/evBWmI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72a1dcf3-135eeccd-d6c3-4c1f-9174-2961d8ba8587-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0772879446bf63c2506c003c03d5e9235c3e825182823da50a8f519362ef808f
Date: Thu, 10 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646895684

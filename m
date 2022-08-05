Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F081C13
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659718852;
	h=To:Subject:From:Message-Id:Date;
	bh=Db//IC0PP9XYeWEssYuw2OAGyKMnLoXOzdOkQeyBZ6o=;
	b=a9dpUHKSx27dp8xIQqz+SWBPlmPxzsC5CJFQsIIlWUQ6Tor98ENwShoUGNdagdPG
	+MxqmwDQXBY8LIWCDDXv5wflSRIqi58ilG4KIAYWlR83isC9N7GHg1rRi2LRNc3Wla5
	xcnls1mnO3UnHOwhoXK1Vsf64u/+L+5iDKhlg6+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659718852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Db//IC0PP9XYeWEssYuw2OAGyKMnLoXOzdOkQeyBZ6o=;
	b=g2nmz/OWoj5oDBFKl9XlXYbuzzB63k/1MDS5vnbtfekx4uW1OsLfySoYZZp0G2hj
	x5LP4T6WCjEf0XHfYJmN+HLLQjoo4RXdeKa4gQKckzyBeDbHhZbYhXWtT8LB0G+br74
	dvKSbI6w9NzYiHwX02HAYlxYAnxDzmli1GCVPJTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ef3dfbc-ba19c7e9-73df-4529-9238-af14d9283033-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49840938b9e7c66c7168129a1a6214452fb8201b7fe33f2d33fbcdade26e289b
Date: Fri, 5 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659718852

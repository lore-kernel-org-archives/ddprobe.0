Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A6339D
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657182412;
	h=To:Subject:From:Message-Id:Date;
	bh=Vj8UcIWfdIsl0nMQ76MOpN2XcuFHZB8fRL72yv2+4So=;
	b=BFPbUaag+NpReALpxyi3fiF017OWQuU+7yBMkI4/u2fBlzXZRdD8/MaZKOXmwZX1
	y/z0VZjwIng20OCUDs0US4McL1N+50cMkBk5PXOVZDNUyOaVSkJ81wLULzpbTXTQNp/
	Sezq+Rt1r3soiUcM56PX/eoFYfF5lOfbqSEamx10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657182412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vj8UcIWfdIsl0nMQ76MOpN2XcuFHZB8fRL72yv2+4So=;
	b=JopKlIwPdLLaBs2pOLp4Po/xFCBW1bSxD/7he2zIbKoXd661flFwH+OPv3vl0vT+
	3RsowmPRf+8YoMkoDqZccmA68AWFpw7uABvEXPD+j1+8A8dPIsEI/F4IrgZhMz1zntP
	ZskekOBhCI1qqGHuiYYATyBprZuW6db4/+bFyAyg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7c4ddf7-82a4dabf-4fb0-42eb-b23f-4a2c21bcd921-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14db32ee929a75c1ce219427968c851acdb71714d148104096b4fa260ddc2a17
Date: Thu, 7 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657182412

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850AD20EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657078012;
	h=To:Subject:From:Message-Id:Date;
	bh=QkpNfZAi22lEoo9o6tWrSXbsHdy8kwvROy+29L7Rpb4=;
	b=jPpl6ABzNqzgiDIOcjyqL3UXYNxbsFf+ir4XcoLXh02RWrYPj7RWm4p+PKJ/nMzm
	Xc21AD4GsvzwErtyrotY+FMcqtj6qt0C932yC6EDcuQHlcdDdSxmCQV7aJhUCwIfxAb
	LO8VqB5YuOQDi0DQi/gQiRjxsLwKDBQz7OuAoDGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657078012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QkpNfZAi22lEoo9o6tWrSXbsHdy8kwvROy+29L7Rpb4=;
	b=LgUG2N2rds4FVJdTinvPRghbxNxVogmvDNyphDtAX8ExYdZ4gzm0A2qgj3RNZnZG
	jCgwh93XYXgfn1fJlwnOSnsfg5ptr7GcIXi0+1RvkhImWeTOdU2L/D2ZBzLXPZaR+zX
	1ALTBZJElCcN6DNucsIyZ+cyZqoQniQF+mcvH0ls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d18bd99e-7deb8c9e-75ea-4f37-95ac-c50bd331a697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48aeb6db3a5ae85fd3b15cd84d99144049c149a4137d658782b4cbfdbf3d95a8
Date: Wed, 6 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657078012

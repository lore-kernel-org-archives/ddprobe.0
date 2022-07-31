Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7675C87
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659254452;
	h=To:Subject:From:Message-Id:Date;
	bh=+QQ3RwWYgKm70yLPczl+0MtgdA2q0IiYGXLM3raLSE8=;
	b=KNZmaacR24qBMq2mdXP4lp9NmpEb3mS1nkJI1g4IiOXcfPbKMN8Lkq1coK6xLUba
	x04rqDboan8/TQ6zL4Wj2QxTcZYX+SsZOxUQ4LAJfeM+EinL6DLWUWue3s0ZRjOYMqN
	aX3XIrL6zVEiSmpka14dwYVU1ftivaqefnIWtHI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659254452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+QQ3RwWYgKm70yLPczl+0MtgdA2q0IiYGXLM3raLSE8=;
	b=OrL7kHO9+u7v05VTzp0JVkOTtzx6PE+2vMXtdvSi9RZtTv1Hkt1mC8AiPP5nPE9q
	QbfvJsfC3fPw9WZckFUDO2yEO2DxFFj3+i0VbDUOMqRT5D/TkEMzPMCfvhiezthLMfD
	erZeWw048yKQBBGWY2SwX6RV8YFsNqOhEGkF0UUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825345b13a-b42ca1b3-44b6-4971-9030-41ee6bd0f2ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b0794b7812e2ba7790f6706fa2bb454c2b6f5c9a778eaf7f5463f73e33e8eed
Date: Sun, 31 Jul 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659254452

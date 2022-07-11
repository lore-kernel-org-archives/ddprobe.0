Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078BF7A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657546012;
	h=To:Subject:From:Message-Id:Date;
	bh=UsdCfX+/q4pN/gE9CJHYvK1X/pEKIHeDcYwrpxIVuAk=;
	b=a5/xMi+bA2uTIbmjrTSZ5vPhtL3FXbNrRDgkF5VK3Y+7Yl6McTmc08HhKt+a7m2x
	NO8jjlDlG9oooBmh7mf8sjzHjhVE6JNoZ59FDdxMBFT7nDOS/YPBhzoBPjtfCqvT9fv
	3Q/y+iZI2tUmvmst/kxtHbk+aigp2/rhX9gKnjFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657546012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UsdCfX+/q4pN/gE9CJHYvK1X/pEKIHeDcYwrpxIVuAk=;
	b=QxwXornY39N9nPoL53zVDB7LwiP4JIoWOBX+aCwIS34RqZLKwa5AEJZfuRwyM9He
	rqQ2CNttcB6g8eVrVpe3VcVcSYsRE1TLYeE/XMO3VmBYdhnSFWyUQ5VJv2G1SOYQlOP
	5IPbJP7t3TBLmyjDJ+URI+Q/Rv9yUaT2FIZpC4ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed70f68b-f64f9239-0923-4835-833d-838117df85ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8223c7ada25242382caa1f2d58b8502230bc3e1cfe587ef443bd25f0a3c5c35d
Date: Mon, 11 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657546012

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F96133E9
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658403412;
	h=To:Subject:From:Message-Id:Date;
	bh=6EEQuTW5Y8ltf1XjkEEEP1RJIeSYge2DxlnXQSpTND4=;
	b=F/bRZ47EvyZxhkXwIZl6uzKOzSrZKfOHsN9DpSfU4ZnWv253ng17Mqt2YP3SJu9/
	oXs76k83dnMte2g1bFRZ3iPM3kxsROnehvO8527Y4UvaUsbV08wZx9kxy5RRFp11zez
	DXoecoXA4emwCtlwY3/2RvoKiOQaiT1OrYfXPg/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658403412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6EEQuTW5Y8ltf1XjkEEEP1RJIeSYge2DxlnXQSpTND4=;
	b=cQMIY1gS3IOcXvUDyOwj33eA/uy1MjyyG/Qd/asCJtUzXxQZjUYI0GQda8HCUNX2
	f5JgpqLuQ7qTdf1Ny9lE/v9S9XHM6v/U3hqur3H/moakRaDhfjHQoBwhAlOeajgJidd
	PEtg2euP9//8AxlYl1110zXZe3XCvb7LxU71PHJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182208bd932-78c0f58b-8f9a-4b49-a64f-32ec62d6b5b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1cc783aa0344453e0d3f02cbfe2e4d3d3555769f1f8a1220ee65d8f63765529
Date: Thu, 21 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658403412

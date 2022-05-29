Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF9215A8
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 02:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653790259;
	h=To:Subject:From:Message-Id:Date;
	bh=vPibDNdkk2an24ZqHkeVuj1yAdEG+CSC9tkBY6ZZWeE=;
	b=I6YOjjdIqx/HgyA7zLpxHUX04NV3nI9eUwbhOXomrVPqeUmRueWHEdRclz7lNcCI
	0mSwpeDpSnhQ7ZtQvb0TV4/t2xJSlAbFwxMdOCXV3E8Gq8cOn+Dch+O6aTAl5NixmSi
	giSrR3j1WMhdKJTEOGMy2E/kfvfSMmgdauX4t0nA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653790259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vPibDNdkk2an24ZqHkeVuj1yAdEG+CSC9tkBY6ZZWeE=;
	b=SNYwM7jYbyuEFyJrTtySPe+yJ5TgqWEDxvGZ2QM+Zj/gIjFy3ao4wAsnhj3VdFr9
	vs0gysHaCwelV0BgB8+HqqfzwKNHIf5Hr+tUStFGiysGBAEJYvmxXPeyOyPtapn9O6y
	Jfdi1S4s6/YVsNR6ULBPyr9dzfb1ByL16ylXKllU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d94b81e-039817b5-89a4-40aa-936a-8aecc4dbfea3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd982134c4651b6cee9946918a70a9ebd23a9996ee9752af883a2d4463563fa9
Date: Sun, 29 May 2022 02:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653790259

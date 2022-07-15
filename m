Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E26817C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657847812;
	h=To:Subject:From:Message-Id:Date;
	bh=pKV/bZF032imEJiMBTrXJEM3VwKucPE9Utrc1ZB43Uk=;
	b=GpTMMfz+a4c7dAcTSIpXIvKUf8WMEmDj77zPOYbA2VLbugZ1gOxnqKVyP3P6XPSF
	21YRqUkgQc4OQntmd5WbOXjOL/H0W/f31fl+942tR+VE07gjQzhZfwVuFG8o6VQltwO
	cI5nhsoROasoiQYCnDUb8Hd+JPSJGTXmoqNg0YM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657847812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pKV/bZF032imEJiMBTrXJEM3VwKucPE9Utrc1ZB43Uk=;
	b=bc6Ps9OzD7xCOvPFEaFnkF3QPGqSUDb47WKWr+q79fVK8gsgiheUfW3AXFHcIPDu
	m+uLiWgUFuMXcEa8hGVg8+MiG5ooSZMzC1IMX2setRkH0NS9zVZT2GY3g1u0AeBwMoH
	b/L9t2Sy4lqAIyuhbsCtzvCJKAM4Pf1WT+9/ErcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff6e10dc-280b2af4-e781-484c-ac28-7883f4f66542-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9aa0da93eba827482b003054650162beef7c845f8983913911e6f5f49c0bd55
Date: Fri, 15 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657847812

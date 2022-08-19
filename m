Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B530B193
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660874453;
	h=To:Subject:From:Message-Id:Date;
	bh=p8ZDg8R8DVVBMh/h0QUjvmy7iajH0IOXwywkzAzbXkU=;
	b=Eyk2wG490xxYG2ZW6gCKnPMr+0aCOYC/MVHGpO2aeXJCNUGQsRjRh/MwTAscdKQs
	7oFlD/rnUsZgLem1R9ClzqV6YqLV61/FfHhvnkKVbvYmGt6c061NTheQTylssse9UGM
	hYwKZw0jM40SBbo7X5ht1meCFVfqD4iBJnPgmdfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660874453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8ZDg8R8DVVBMh/h0QUjvmy7iajH0IOXwywkzAzbXkU=;
	b=cZp5ASZqNljjoiFzk/eFIqIqjQYyxGNIXMxvt2Oulx2IvSpIh23mX5dkmYLvsVxJ
	r8acsivQAYelzDGyxTz+Mi6D3ty/J9Ax0Rs2dOHUr6TAL9R5Je3cVP+T+iw1MCizy2J
	TikxJwZ905D9PvGo8Kk2TXJvwmReGMY4jcIifJvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3d4eec3-4c1057e0-a84c-4b0b-804f-77b2cbc6ed50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 300c18e93cee441b4fe231a43a6e23c5c6df48c25379c3cdf684e66472e77861
Date: Fri, 19 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660874452

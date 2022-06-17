Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B84291F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655458979;
	h=To:Subject:From:Message-Id:Date;
	bh=9XDVqT8jYTARU3Bwfe+R3UXdx3K3B8/hg9oDEazMh0k=;
	b=Tuzo/XtSr4d4Q6GUeYzkz2WvXTJJbzV4G0acNa4X0i5Amb72rnvIdddmJEerTw2n
	XJ5k7XP4Dt9XVygYyleSGBSvuITWI1ZqBj6Msf2tccHFCzhSNKSHPfJzT5LteFEyXt6
	hiPtkXF/hVskvprm1FHjYRTLK7oQjfJZpX8uFxtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655458979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9XDVqT8jYTARU3Bwfe+R3UXdx3K3B8/hg9oDEazMh0k=;
	b=Z9ofOWI0MQ8M9BmLJG5dcFaipiHtSAyZGdaWhaOiEW0VvOi3NbMgrp/qaqFSFC9K
	nfORESlytvp/92wFDNLoCkMjbssVuKnQ9zR7bm+JdVxMtdo0AO+xytWE8+Lf9xZV0cI
	YBh4Ll+Qn+AshD1HhbA3YfNPJs6767oiXe3mGQA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181710b5da5-84eeb811-3bf9-476c-9d1d-682c7270d3b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 702e7fbf924764d1a28e96b82a06b6515f60a77b7567e1c0d231f735bbb8c163
Date: Fri, 17 Jun 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655458979

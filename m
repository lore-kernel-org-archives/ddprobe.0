Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B260315C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646077284;
	h=To:Subject:From:Message-Id:Date;
	bh=3OL9qPOTKs00lV6NwSgni6m0FhfoqR6ZZjCji32Rx3o=;
	b=hqLaQgkj2DjoiuA53iQMB1vn7mGcwpsxHRAi1UXCHJzignuhqgnGkzpfQk3pnCwg
	yX4luL2597uMLiJ2806BHweNhdEL9k6EWWkn27uejCQ8va58pB6kdg025+ani/LebID
	01pgOpoE9bMf2v5Z5zvHXnx2ts+OcYBU8eRpJ4zI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646077284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3OL9qPOTKs00lV6NwSgni6m0FhfoqR6ZZjCji32Rx3o=;
	b=O3daaEI5VX3duFfaeMER82p5YJ1cQmnBrqCIbEgj2CVxCMcYywCusOUvMr+DKUpv
	Ml8qf3KwmMgasjyGdj4kJPOs+4kZt8tN/rYQ+Nk3AWzyOOkNw70f4aQf6GBy1zkNnG+
	r8PsZiYSXThy9kV08d94AigYl+BqwwDLcW4aVszU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41da117a-d3a01bdf-b08f-4ff2-9e07-6daf7830cf14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c571a97179fe122a5e69a4afb7f8ae1d36dd72d1871d4a473b716bf4384318d1
Date: Mon, 28 Feb 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646077284

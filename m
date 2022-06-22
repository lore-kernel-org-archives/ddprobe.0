Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144A3139A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 12:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655901659;
	h=To:Subject:From:Message-Id:Date;
	bh=HHvPCK/QGrBPEyIC9X71Mftl1hgqwxD4qVCLYhg43Bs=;
	b=F/5/0llgeDgs9/iidvm+ge6dHtwM2PZpRX5LL3PmYGB+s08ArooonkILv9JjfD+V
	+g2Pi9DfZgVLAU0oE1ZA9d6LOqFMU3cIS0qhAS51/iMgjcQJSeO660/yFbXozGzoJwz
	s40Kwjht/Py2AOhrPNGR7Kx5zaDxmfZJ5/gTVGiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655901659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HHvPCK/QGrBPEyIC9X71Mftl1hgqwxD4qVCLYhg43Bs=;
	b=L5cXCEA4CAqqGdDWZz+mxeZLaT0GbEvvJtIA6ums3lqk0zOD7GEeIP7iU+TiKq7B
	jtstOGP2u5TLAhiGFFVy8yBGxS8sBVo6rnmyto1RTbctgezw/1xwLcLluhYOwYbvkdA
	q3H+RkJ1pVx6Xer45/JMIwo1jFSjArujuQFgkO4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b6e204a-a0f3771f-3e70-4400-96c7-a03ecb162ec7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 259ef99f764de42b85456d91a2d1afd6fd7214a20930f07d46796c195fcd6655
Date: Wed, 22 Jun 2022 12:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655901659

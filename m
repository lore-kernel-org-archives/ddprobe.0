Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA5A3D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647511584;
	h=To:Subject:From:Message-Id:Date;
	bh=Ig9Pu/7gCvfsqd3LCYacTZ7BFx//HhJ9x7I+0G/pWmU=;
	b=ilrilNcpc0A3VMtfwotabOLXsjLgrQ3CvREe0mDH9vx4+L/fV6go9c1kD7y6uEY6
	2iJqQxN+JX0EhirbV5C9ZTg9ws63SXZX78I9qhO9sOx5SNfTjJ+ev6xks8Auym/WPlQ
	Ra5H9w6F9VK095/dKcAVRuHWrXZocrIf/Xq1KMpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647511584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ig9Pu/7gCvfsqd3LCYacTZ7BFx//HhJ9x7I+0G/pWmU=;
	b=Dp2By712B2TmgMOJMDYbkW/9aTAcHIkWLtEdCPkKtPnSRmMc/34zFhYdir3/E1Z3
	8WFi7cZBcnuscFPgkDiARLy1hrpgMGwOxSrQwuvtgGnXc0arFP4UPNVOmuDXYZi8b1E
	UmfhhMobj+X7zw9k1DTmjveeO3BeCxxpLH6IdXkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9757c00f-0ad4f216-39f8-4b38-a567-f2db8c6967e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d4c8eccb89f53663f2a2f724f3fb6a0d259d664b113f91c6cb699f15792d03a
Date: Thu, 17 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647511584

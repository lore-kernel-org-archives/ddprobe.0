Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF56533DA
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658965253;
	h=To:Subject:From:Message-Id:Date;
	bh=/YFpLS5zY9iO0tYxkHBLZjJW61CzCxITpg8kfGtLp7o=;
	b=HZktNDX1nN6F3at9xbweS5Pa5+krypt+eCzBvHZAjBMrKCJLsugweeFeOS1FR96e
	Ah0aGRONo/iYjn2t54ylHuNPqumfVoapQ6WuhjOrbR07Sxc38CdXa/dYZZ0z1rOB1p3
	45cCrU8WUCkU9VRMFGRlN/L2rfxh2gUAuZiHMPkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658965253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/YFpLS5zY9iO0tYxkHBLZjJW61CzCxITpg8kfGtLp7o=;
	b=h3tCLSqXIULIchVjphn6JaZygktrkGK2aqfPFGhJ2fPZdk4Fgcod8XYd4PyhLPdJ
	S8zI8Jqp0uAnxDdxXtU8OxxkdA2Qs63piih1YrTr0LJhGL5thAhEz34x1G5eyKc+CcV
	yYu+ddgWAbsLbOpdXTFqh5ffpD3ZkRVjd2tk6d9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824208d9fb-bd400017-7ac4-4c9e-b437-89786ffa158e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41e288c2a8651240df817aaa00e7f36b3baaec7d469b62875fc56f8d38633c47
Date: Wed, 27 Jul 2022 23:40:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658965252

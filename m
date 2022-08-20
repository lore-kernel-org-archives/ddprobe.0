Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF7B7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660965052;
	h=To:Subject:From:Message-Id:Date;
	bh=d3gCfhWDG2IE+hdwFTKbfGc9V4HkyBWDgK59yb3AYo8=;
	b=iggSB5IB93OAB1sDbaHMVXABG2Q2154hcJmsw7pC5UhcBZrosRkRa2e45o5R+uwM
	iUE7Bj2yzVNbq3z0mHRo4IGdHI5+SQ9fwwJPVsqBskSUSl62PRQosahk7QLOvQ/niZI
	GiBehWNDRaqP6rJHzb2Qv+A0fttGVRH5Kg8AiY5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660965052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d3gCfhWDG2IE+hdwFTKbfGc9V4HkyBWDgK59yb3AYo8=;
	b=intcipyu62knsTzx/XQhY9YokPzyTlVo9qIa4EGgsaaFE5tJ2wlXk4/K69xEvGKQ
	lSTE55JL66FH7K41Lrd6wf0Ut81IrC4BD54x00KBXChQxwqx4sUQd49weRuZKQgtQiR
	I/Xha1KIx5m41OqqxguVmybFfuiBdb3qQ6UTxYyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b93b6096-bf75e891-a88f-4b95-b335-4bcb4f76ece0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d5cb0f2ce869c531ad64cf8d65a79db18014f9e2cc124ad986a571d823be636
Date: Sat, 20 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660965052

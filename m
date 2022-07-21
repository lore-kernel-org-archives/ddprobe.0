Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5274053BC
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658431612;
	h=To:Subject:From:Message-Id:Date;
	bh=NQUsI2R8lPvx5BezaButyV8b9A4jgJwBMDR9SsCVfAU=;
	b=Aa6WdjZy4yj1Pm+HvNwxkkRP26ELxdZu4GTDlhJsgG7/QEbw0GZoMU3iEKKufyVn
	7f50zGKM8hhR6bNN02uTTDWIqHzo8l2dsmBdZFCnJRjWEFcneMfpD3rFPYpKDCC2DTM
	8jew280ZoNvVlSL4q5azy+7cmgu8SEKs26ucXwG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658431612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NQUsI2R8lPvx5BezaButyV8b9A4jgJwBMDR9SsCVfAU=;
	b=b/U1IzgxmahG+0bGBfWjwl5xABJ5myMFjyOv78qupshkZcpFoIhZm+BdT5UIzA/4
	G/4UEHDUiSAPwfWXcaFUtvq/PN6AwvGVfDW4djwV4DlKpuUzgr8IoFpBBPvJOolH8Ww
	PMfnOiAdIjmxIvLkwpSQCUSmaQO+4oUe1ZYXuHQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182223a2574-98f490a2-f501-4ea6-9d27-ce6ba1f5c020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f39434f417f33481febbb6c093480ddc1602532f22c0dcacb65a381b6b47278
Date: Thu, 21 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658431612

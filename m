Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8645F7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 05:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653370319;
	h=To:Subject:From:Message-Id:Date;
	bh=nVUGgCygxmdw4BtMLhIudrmuKOXoBlDQvTeNiT122Co=;
	b=ObyoYV/WN+EuYPjtodtaGAaNoEc2Ahi6xSKQsyLBRjsfzm26Qjo1+7qtS6l6ifKs
	NG8rZtJ9Q7zRGE1yc0VlOA6mrBjfrGXg5wy4EQCuUrREddTGMPbpxyiNtXBBF9rlG46
	TGfDNiza4PSxtWO7V5vwOSN/6OzuSgpuXzRY2DMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653370319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVUGgCygxmdw4BtMLhIudrmuKOXoBlDQvTeNiT122Co=;
	b=Xybjayvche98kyXOa7QLy911pnpZRa2rh67oc5PMabo/eyUA/KICU+IkZZT/WwyB
	uDvX92YeYS7nB2daGnp46P+F6+V0+IbFDYBjJ2s7+/gjV3YLVL1Pi4rZOT6WP6qg09/
	7AYXhtE+ytAFi210XtXwLkjntEbbpk0pz8eSe7VE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f48cf181-df9da89e-e0d2-4fa2-ae54-0ac2e4a2a0d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1f35dca5f9bb56a1b5a2ef865bed040f2465982cae1e17202f771a0b50b7954
Date: Tue, 24 May 2022 05:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653370319

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB791FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647362184;
	h=To:Subject:From:Message-Id:Date;
	bh=SufISMEwuE9CG8sUt1wdiwLTGgR5Q4PLryuHk59Zonc=;
	b=TokJY+dDBfx1vmM5qebsEqJjrT0+AUB7os72VOz47XW0oGZp53xI2KF1e/t0oX8B
	tK4sZN3vrN5zG82qTKSSZo8Hd+CuIZag/9JaIYYX6GABzmxf3KGN9Qlm1PrKn777r35
	nMcJrAqMAijIrLB1UwrIK2shVdIAO4rBhOJgRwHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647362184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SufISMEwuE9CG8sUt1wdiwLTGgR5Q4PLryuHk59Zonc=;
	b=M4Stlbf7hN/OxQAwuTI36FuFTyKPKBh7tFm2yU1LmK8RqLlxDwAQti9gGkijTCXM
	dfdH61GD+e9I75+f+h8/v2P6QAcZEKoGlZ6plM2oA5oQMrpxtVjAPn07g9XDApzjClI
	Q507KwYSRtlLjrjPGDgaHQd1KD6lq7G4BP8PGJss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e701669-32407e02-bcbd-47f5-be68-53d10e0eeb63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c13dc3c0b9a983429008474d23a4f0115937e256458b3bbb0664d5afa3af9d4
Date: Tue, 15 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647362184

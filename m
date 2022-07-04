Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236A115A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656907012;
	h=To:Subject:From:Message-Id:Date;
	bh=HaJDbpep1VYFc2om+2Ynuuw25mzZmWqy82oaCOCtE9Y=;
	b=FswR6XvdRvzE64aDU2SJkkxIo7h5NAyZAIq64J4UweOyYTM1OGwstMRL2935/Myy
	y29MTXL5rFDdHjBsnjbNbOPhPAlyT0n5ixoFt6lJZQJzdX4K6P+01Ko/YpuYlg76lYk
	uXpDfyNX8CIyzLJ4y6GoBMd3rf/nK53a1RkT36JQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656907012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HaJDbpep1VYFc2om+2Ynuuw25mzZmWqy82oaCOCtE9Y=;
	b=PTVDkgq1vOEv1oi0w1WRuLYSsM8UpkBHbJrotoYksf3vg561Tn/vJFWjULBa1BPY
	pV4yqIUV+uWglAj9yMdRnMJdBDWydm4g/NAlmvl4xdXVDHMAuMV48yrh/3VY5LGh7Bs
	gKffTaYqgFMbp7JgrCE9K44+h1jSdt0PzK1iyzhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c75a98c4-e1feab91-08e4-4246-80c9-deaab5ec7064-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a9d433b8f4f94caf7527ce95dd157f9a8be77c117a06cda5a45d69d2d2aa276
Date: Mon, 4 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656907012

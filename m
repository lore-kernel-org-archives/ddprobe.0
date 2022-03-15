Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FDB23B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647358884;
	h=To:Subject:From:Message-Id:Date;
	bh=gccoY1ma3FggGmy3HKy2L/zrDY8WPaYxzGbGxZAn5+I=;
	b=aMO588YlXzcqQfzcNvZXsS7uEmLUfw5SqYRyE4onrj4dPbbjB2qdGe0oUZLEEO4c
	XgsMe8cqUOtsJpd5Ufud5LEuA7B433pgW7t9j8z2/JVPhuGlTKsI7ClPHuUNuD3qDR2
	KdlQaiY7iogYtPffZSuHKqi0oW3ippwzwiOgvlNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647358884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gccoY1ma3FggGmy3HKy2L/zrDY8WPaYxzGbGxZAn5+I=;
	b=O+SlPp2fOqDf+wJeapoIwW1PuLfKnxmby4hZGBYR87FEFhl8RMF0841Dg0pig5PT
	wh1VjD0//b68hsMiV9tIxgBvjfFmsvKoM8p5XlrCrZEu4uJdh+hwfDaF01vgUZnxZqy
	IFxJMt+QbpLiQuOSFrGqCT0o47KTRXB5rqN0d/0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e3dbb9f-adbdba31-57a0-40ce-a4b2-c15f5b3b2f51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd238a39745596a698f8bf8fc90eba56a28c88d0053656ac9b5ca31930341e85
Date: Tue, 15 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647358884

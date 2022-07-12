Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163E123A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657607812;
	h=To:Subject:From:Message-Id:Date;
	bh=AtRz8SL/bqLcnRdDvAuHk5709ye8yix/G5TGnoG49hE=;
	b=S4siTG+szT2WojSc0ZDkl6HqvzgoBHcoZ+oKp+ouAervxoGKQwOWPmrVYxq5PMIX
	hIYujA5gnZL6EM7LLWRd2fbeCyPXNgQgdGqJd9jHahPqda73FmcUyoCANjzHeQ1n/Yb
	cXXzDuUIJIjKv8K7Xa3II4fGML3BdZJxWlar3Ynk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657607812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AtRz8SL/bqLcnRdDvAuHk5709ye8yix/G5TGnoG49hE=;
	b=e06ng7w7xF2Qv+yJE2/fuyM6H5mltq4oT8YlEiHYqx7dm3EaF9GDs5qK4ZBbbOEH
	j6HMfmBPXxH14hvrAYktlaEtLR6HKERsn1kxAMFO7CX6OsNduaJv2+zHORK7ElhGJFh
	TJ95LSidtmmdsClPNtV7rkaWkrZEN0I0KDGyGWHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f11ff4e8-f780fce9-cb62-43ac-99b7-4ce5f283c7dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8cc75dd542e3d475a6d02390f8ad6b1b4b62058c1fc7bc054a96ed825db5d23
Date: Tue, 12 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657607812

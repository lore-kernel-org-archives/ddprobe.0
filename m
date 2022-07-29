Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF167A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659064252;
	h=To:Subject:From:Message-Id:Date;
	bh=g765VT5ZrBNctgeexoHBhQgIyCtjV4enWLDJpiKVXLA=;
	b=HmOmE+xY37qetmJnJWHx4qKQCi0yPgJAu8FvYuz8WSbvEnJ3v/HmoUtW/gdt3fRE
	HQX4UWIuG8PZozR//HP0nowbKHvIJvnMysOAliaNTjswYvK1cxQNFHUyPLm9mANGau7
	zNr1msVM7WVjEhcDzuAf/ru5U/pecIxxzV08JtK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659064252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g765VT5ZrBNctgeexoHBhQgIyCtjV4enWLDJpiKVXLA=;
	b=jL4iGWB/Wxq/52wPbi5TPtN7690h/IRVgK1/zwFP0c4xmmAZK+YvdWYrfsM5GtWX
	Iap3pk8iPLq+q5Z97xmt6CDcd/APYDpTAR/9To9g716Jzk5j+hxj/9FN7wTc9l9tcsp
	2zu4e+2wzA8NhCbH/DETU2XQuTimWpp3EcMoyd4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247ef7894-1c135b08-c065-4d9e-a34c-27e5fb6c7b05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fd3ddf409b5874f91570346b16fc8ff1a20e2fe812a068aefe18f804f870602
Date: Fri, 29 Jul 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659064252

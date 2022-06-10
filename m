Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F9E7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 03:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654832699;
	h=To:Subject:From:Message-Id:Date;
	bh=lEIOBA/f5bfXbnExAtiIplbIzd0T52RQIh3LQXCvlYE=;
	b=FpFMgLTl+2r0axNycqQeSZfMc4JZCIp5s0kN4dXvIhf49but6SKMPvWxKV2kvqMe
	CNnyzlNKZziRniMpQcriUabT0euYiHl7faC8IZXaXsxz+8y0M2FecCOcDkcfqgK91Tq
	rDMG1aQhbG3W9zjTMELjpsYkaT7Lt+q0mkIFFcI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654832699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lEIOBA/f5bfXbnExAtiIplbIzd0T52RQIh3LQXCvlYE=;
	b=NJwGqfCfzo4RmQb2ndhmEdKL3JLNkddjOrniDw1/cLwIN76Vj3EWcCQ8Wofjr52r
	uj92uyJ8k9XEy3YiqIit1NPO6Ml/QdpRodCiH4QP6J1GzLGDYNykG412B46Pwl6yk/5
	Ia33UEQwH6rsGSHfGndVyyd25mm64pxsYUtXyB0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814bb7177d-13718147-aaa4-4db7-bcd7-4634d0387621-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46d9c1d48e09b3104bc5d87f7831775f947fd07ebf84dd2576f7c581b499a706
Date: Fri, 10 Jun 2022 03:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654832699

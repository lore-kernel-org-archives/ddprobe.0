Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484A95115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647632184;
	h=To:Subject:From:Message-Id:Date;
	bh=pXP6AdOgeYsnGTIeQD8s7gB716X5BFdCEOOLdtOwKSQ=;
	b=dtPlKjUAXy/W3MyEzeC08Z0pipbtFZ4W7YbtnsHQVHBuBmXYWRowA353ZcXKV2C0
	0o2UoVIaRQM3/E8jopI7XQuuZF3jdJLnx3zFs4UQKcrDVEvqSLjK4NQsf7gta+CfGZO
	dT99KHNDOvCH3qlYvXZOhaCKS0Q9BUlyakiQ9z90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647632184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pXP6AdOgeYsnGTIeQD8s7gB716X5BFdCEOOLdtOwKSQ=;
	b=b8qOg/INy5RKqZEpzU/Ej9F2rD04pKGu5xNx6Igd3eTofz6PxjzFmYhdB7nUDKvH
	lG4+DwbD1PTkif9n4pvic9+dNQOHrs8LfYhU6kuF1zEyUMEkYsTSyi/CKvWWc/hRjk6
	zWmDP5teiir0f54hXQgR7c9nDUaPNTED4shd8BVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e87f5b8-046d13c3-0dcd-4e99-9aae-bef40e311459-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dab452b86e827044e9748bcb40bd927564ba381cbe29a0d2a18636469d4ed04e
Date: Fri, 18 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647632184

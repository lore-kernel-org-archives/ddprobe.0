Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1693E7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 17:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650736198;
	h=To:Subject:From:Message-Id:Date;
	bh=5dM3dr67EkTt44/3vvR5XfU6wZyHHjZwBu0boDh68Ek=;
	b=V5Tjz1NcGlm0RDVLpKIkSlmbwvmiC/612MsxHE4UysAOpyqQU3d5ItXkGqftUzFl
	2KzIK8LPHe5oxkrGYayW1ZtvCdY2tTPgVW+TUy91c3ee5D2y0SwlYD7KyvLMhhK8vxe
	r6IzNJTqU6UcJJpNRRAJJPQ6DnoqHb3QD07Lunys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650736198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5dM3dr67EkTt44/3vvR5XfU6wZyHHjZwBu0boDh68Ek=;
	b=VcZA6s4p4O6qMWCZIXyYf4vlzjcwhqWVrO98fy76Es7QL2THMiun06rYsKBXu/0n
	ZNrHpC7Fj/AR82DxH0xagR5El3fyVfQGjQgC1p7i6vUqgf4AQhh+bGdJFG3ro6F7QmR
	A+aJkWmrFur+opE5az2vyorLGsiJvn7XzfVcIWnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180578b72c9-beb4cc40-98c8-4b8b-b6b5-6cce6347a7d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b645d2f77aae24cae5ca63af3f201bd048ba0aadefc7172d840ed4727a144042
Date: Sat, 23 Apr 2022 17:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650736198

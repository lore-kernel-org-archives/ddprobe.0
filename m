Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0C02F3A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647487285;
	h=To:Subject:From:Message-Id:Date;
	bh=XUfkwOyHSINKchmyA/6z+Rmh7AfqNVL+Pbl/N6AJlp4=;
	b=C4qAHMpNGf8Z3ff1N0ExB4a5QHD+nFYZl8wDNPaJwQTnvdiVuap0oAm0YhP1/+12
	juKkD+sQYNFNkksMbo7QLhE3q38w7m0yMScqpOAOYLBn1T/BlFUc9Z+96Xgr0FtyV3Q
	5f4R+FDpsU4BuYD0nWaDrlEBJTyyNDVtZf+yJ+8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647487285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XUfkwOyHSINKchmyA/6z+Rmh7AfqNVL+Pbl/N6AJlp4=;
	b=IFlC81rUaegp+hzTnVvLKvcjCvDfRHAtLn4GrZHA0qht3gnEziv7mmm/635isYO0
	qyTUmQFqMZo1ecPcRAFLs7ZmeEkd023Ga4VKfAf4nWX/Ys+A31+XeVvH7iMA9y5YxuP
	W4nTKNJFbmdlKsxK5w79Y1gzmpW3O0gIxaZ2wBKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95e4f660-95c20df7-a184-4d10-8e80-6dbf3fd4b3d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db1013e895d5a926f6a0acba179ad16e51bcb02eb6f126e682132109e78ae594
Date: Thu, 17 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647487284

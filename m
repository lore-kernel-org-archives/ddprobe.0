Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DEEEA1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 01:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654305179;
	h=To:Subject:From:Message-Id:Date;
	bh=TssTghqknX7yx97prIjp+H2BaneaeWll0kxl7QkAzJ0=;
	b=HeKYj6Hn3Mttuy876li9rPlxwb+GG21dfOQTgdQ8YGQkgTJSSg4qsClUtn3sCbDp
	GJMGlUgUhQqggv7ZItFoh8/c8JZ0sFM+4mBc3M3bPvKHDu3Lr5RC9bGWaMwkiMHwMxZ
	u4otr1HIYSJbhe8CtRdZ4domgoIbzpIeahJOXjKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654305179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TssTghqknX7yx97prIjp+H2BaneaeWll0kxl7QkAzJ0=;
	b=GC8io6O5jexoG9ETDZumUeMc2jMZfG6T0G49wPgjh4OIh0GbBr5U5JnLtziTUIFS
	WRBB/czzC/XDuB/07Fb8i8VE9CpbSa7CXtxdVkzPbS9XS360R3QhegE2TM1cC+WNXJq
	c3IR6yuG3x2in+nj+12HldBOHJYP97fa9OM6nNbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c45c696-8450350e-3d32-4c51-9fbe-09dced2e0e3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fb3553bab2a8ba18197f3383c1e707ca225c21561fc3f37e552f63a49778fd5
Date: Sat, 4 Jun 2022 01:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654305179

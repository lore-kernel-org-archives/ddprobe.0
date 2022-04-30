Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E2F2574
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 22:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651356538;
	h=To:Subject:From:Message-Id:Date;
	bh=fxYKBUGTRJmFy65zw3TD/ajqry9T377tu6ryEudcWr4=;
	b=f3lNMpRjSZtLSyoBKnQ5t0eOk/9FOabWkZfwlgv4NpLpR5yxMY3FoJxVsyAf246s
	eQNt+pmpyBaPm1fXbbVNZ1j09eIiiLlOjkR2gEioDzMNv8lzmBLfMwGf3dXu/BvnYev
	YCMJr07KfKv8qvdJ7dGHnOVveuBMSXpcv9e4Kct0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651356538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fxYKBUGTRJmFy65zw3TD/ajqry9T377tu6ryEudcWr4=;
	b=ZNAMU7VUNU/mb8sK7cRT3HCka4MajYP/9gfmCBOXR7+FLJaFqo7xRR4TBB5+SE5J
	y62lPJwUzD6ZKFQ/YAWkyh1eU+HOHeaZzwEOV2WmBP5cQZxe8OyRBowOfzulEOvXGwS
	nCwZu79WnD7BTWPj3KL9Na8oot43KEwYRbiSYLU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c8515d3-32e19c0a-a7df-4044-a571-8844d54643de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6521a7971eab39c57becf8870bc5128202012f8073b2dc3614c9794359bccbf0
Date: Sat, 30 Apr 2022 22:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651356538

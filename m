Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16D63216
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 22:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649197139;
	h=To:Subject:From:Message-Id:Date;
	bh=T7eKDXMcYn6J5rMe+1sSQmguyJlBhmTAmAj6yyaiuMg=;
	b=RTcICFKe6FXnaZDYH/rWQkVZuViTuR8GW5A7bjRJH6qzum9/ei8VOUHdxqUq4TB/
	z8ZYveY8Qa5YcHjvt3SXTGoLkfMmOOFZd50LhgkitTdnNkjPbDTZlD0rmiubgQqXCOT
	WQ/A8/dH6aUXFZF62ciNc7dqxK5z3a2/5z2bSwO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649197139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T7eKDXMcYn6J5rMe+1sSQmguyJlBhmTAmAj6yyaiuMg=;
	b=MZEYGS6MkuwwlB5CE+oO+BMpOv6D5zV5gOvkXoaDrHM6Mdy1Nua6WW+FG9pb4MeA
	lAoelyxRHMPTFpLFMN1jKtfAmPX3y55uwYbqxBqmxLENJgMU+Sb9/AdxHjpmGmXd6oB
	A2OUdnXNlhkTmt3KvH7378LtFTO/VF4P0PEwl31Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffbcf41f7-51db771b-3af4-4f5d-8f3c-c8ddc84b0903-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17832b67aa22e4d08c6401a125a4fb2bb2ae40380dc8524396af1b274b1a0b12
Date: Tue, 5 Apr 2022 22:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649197138

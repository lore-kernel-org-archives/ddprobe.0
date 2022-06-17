Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6044C84
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 21:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655502959;
	h=To:Subject:From:Message-Id:Date;
	bh=4/YmJFu31Ib2SwdNWWPdcIBa3k0btZh0MhLSSo4FDnA=;
	b=X4IP6rk9YBQpDrNfRe1oZ76hgUDsG1XfimsHsTy8dqzPgmqFRW2xJ/9SWnMCPC6x
	hUafUuaz3eE3k8dGkLYcc8uJAs5fo+pp7vWP/sDYhvlcbjh4VBGWj9ys66Ee5KEYpYW
	lB06ynzfDedlNk8TPVuolmtbhpo5O4V6s7OzD9Rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655502959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4/YmJFu31Ib2SwdNWWPdcIBa3k0btZh0MhLSSo4FDnA=;
	b=TjiSUxFauxEdXwpSjfuxGWjjym84wcCfvmWPqZeFzemUcAS2dm7hrPYgQtfD6yZK
	rvtvlBXLP5Uv6NnXJh+toA3PFyfi+rOGs93HBhiVxwanQ7FXhwLARsRKSKCqJecCkIa
	3dt9JBIoYBmmjdeIHC1NeZikX5b+VOnecTnRPc3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173aa72a8-b464a374-170a-49fa-a3f3-1bef049e2556-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c316e0cc8c018173420d7a93c01e6e02d3ab9f3707921a42e95b5d20fd7a6ee3
Date: Fri, 17 Jun 2022 21:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655502959

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138837A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645718185;
	h=To:Subject:From:Message-Id:Date;
	bh=dwyF1ziCn6WILcrLbfvjsS+i5AAmqCU8t7ATFurOlug=;
	b=kUbOCcEF96xkX8dpcZAFl6Cahpv63fj3j0bUtel8TTv+3VY0+mEQDjjr6fJp4oO8
	IQtcD4FCGzYvWKTThkXtwE0miN0joU58N33hg+HEsOkJ76clmyfQv/JwOpYDyzyWyZM
	rBd1w1wQAZWPmdupBKq7KXte9MWp+n2HVreGY1qA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645718185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dwyF1ziCn6WILcrLbfvjsS+i5AAmqCU8t7ATFurOlug=;
	b=kdTt5pVgyTfh599nKKETRdKr4w2+tMgTOfi+clqWKHJSf3AR5zdzglMqOFdwLMiO
	BJSWjKVC/RKq4ztGYE/isYBTKDLba6qHceLEAu+Xihk+P0XrZ+vs2+NSTAWD54X+rdv
	Cny87RMBDVDvLuu/NIdWDGLQ4JZ/cwIL67gzxt9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c72a329-b14616e4-924f-4047-91e0-564928b72984-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67aaa50506aa69bc23046403c37dc5365d95792526ac40df131ec9fbaba25ae8
Date: Thu, 24 Feb 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645718184

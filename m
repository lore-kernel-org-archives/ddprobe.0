Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D12A3B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 14:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651068178;
	h=To:Subject:From:Message-Id:Date;
	bh=2SqLMkeiE8/i2douyApM6wt3v6aqskQA6jEj6RaHRXM=;
	b=JUXqjbtwRlXOBcPL0N7uL7Q+VB3xmLgxnK8GoqCr7WslDDU1ugxu1qaP7IJeQlkn
	rJ/zkIwfYSXryQjZmLdqUJ3zHkR969G3YwgzzXmqnQUXQbtx9jyLW9/BgAMlmlQBX27
	DffiGrjodLm4eMgs7JZYp7UlKt55tDC6NTW4UAAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651068178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2SqLMkeiE8/i2douyApM6wt3v6aqskQA6jEj6RaHRXM=;
	b=MIibgogdc/YIu/N8p48TajOA+cEonIK4w29nSVkSKU7MA3YsEztZ5cppLBBFA32r
	HJcjgj/YNwxI96C1UP5EXk9wNcaHIKFO3N/xtS/cB/5xMXJW3xP3IFj4hRCoG4+zA17
	LDfI1l3wIRINPDIT8/DzUQaBq0vZIqOIPYHWNiVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b550f78-415154ae-0bac-4df1-b3fd-338ffdee2d3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd92950799c58168a38888ed5fcc96bf85071d15f80ba4b978ad364450f1a627
Date: Wed, 27 Apr 2022 14:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651068178

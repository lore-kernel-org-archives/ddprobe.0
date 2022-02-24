Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894567B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645668985;
	h=To:Subject:From:Message-Id:Date;
	bh=w6JLwXgCUjcwlVe9C9XniPBXmuMM/YqNi7lY/gGTz4o=;
	b=mHofBPgE9bdcaMYqGbe/mD2LYRkt2DABkc0Ql97Q9XwH+DBxD4y/86oqNo7yKEzH
	xz+nEG+573DbVMJHXexBZbZKbROHgMRV4zhJ+4CqDxVkJMgMLAig3rXWOXvLk4sHm2F
	k9RqSL9n8/Xg/1zObmmEFv3fkOQ1h4OaXDSkSZJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645668985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w6JLwXgCUjcwlVe9C9XniPBXmuMM/YqNi7lY/gGTz4o=;
	b=WgrKi3aotvFSsBVgobDbzrEbvAuK3k40uR0LB5ph+wucpxo/zPRUsrgAk3n5Abkx
	G144QXMNsxFipFEPTe4BosQlNIRmVd2re9Qa+EN/mVGykCnRwu6sjFSz/wSJ8vnabv5
	cUm8hbTptncENmg1Q8j8s7n1L2As3BR07pTiiGpc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2983e818-3270127a-9ca6-4218-8b08-13c68c7d3959-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fd2a3a351f92a3b04a7a8c2638c767c2874c847956bb9dd76da19bcff35b360
Date: Thu, 24 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645668984

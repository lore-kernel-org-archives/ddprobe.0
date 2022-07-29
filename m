Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C5B110C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659120052;
	h=To:Subject:From:Message-Id:Date;
	bh=DVPYpnz8TeURTB2AM3LWmjwTWoLNfBX9MqA/ndmydjE=;
	b=Vhu4tEaAWXBk5kMuSMhVJO2zr3ukjOa8HaXXl6NoyF29wLD/64oZlyO3I3r0GXZl
	kMYiawbl0eplTfqstGK2Wg6disvMhQGk/N+iSrhpq3hfUR+Z9/Ax9L+kmIN/OU2cdNJ
	QJ/nneovYnYI8aWIKiC1JtE9G+3BNBqTNht1M+nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659120052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DVPYpnz8TeURTB2AM3LWmjwTWoLNfBX9MqA/ndmydjE=;
	b=VC4+HCyTWqhZAytIVTQfX/JJVpIs/ygtDgUT7zdHGxIRbw5j11/yETGqXQPjgt5d
	wednEBJywM6CRvUbiPlJNurxopBPkgar9lvm/4t0ly5dJhullut9VVaobKSFuJ8MfgZ
	jc7KRDFWsC+SIjzYlybu5ntpotA8HLQJDgx8vnOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b42e938-1921393a-8aac-40aa-9fe6-f09336791b4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e67000a9cea7ecaab771021e7b4b131158216520d621f3273b70408afcfdb5d6
Date: Fri, 29 Jul 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659120052

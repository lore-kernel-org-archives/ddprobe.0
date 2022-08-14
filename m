Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514B61C01
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660494052;
	h=To:Subject:From:Message-Id:Date;
	bh=j+U8yg46f7jD6jZDf2diJpEBkAH6oDBD0v1yB6YKn0g=;
	b=NQmhOgm/KXJZX1hqTj6TCDlqoKQjR+zQn76hbLXtGFml8b/63TvEwpjs1GBWqAQ/
	tUVXvUqITqigQzYjxVE2AU6wIw1QQyUB8gZMN84N0iNlQem2M497J1dW/ehcl4HlvyF
	dFfD2ncgRdB2Xp9IAJM8cSDfs5E6Tdypn1ZZabo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660494052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j+U8yg46f7jD6jZDf2diJpEBkAH6oDBD0v1yB6YKn0g=;
	b=ZyP5Jud9c7sduIkzD6WcfVEzMWmXdGYgtw0DmH9oWKzhTBgmUjHrNlPdsQjNohSX
	RYpHddPVQFli+RmVzG5ymFO/7vXFuqFUoAMobCJUr9oZ7Uco67YkC7qAiDX+7RzWVtB
	3hSp63nuXhooXXHhofC4zm6VdL2CfSu+wSaDQl+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d287d0f-400948e9-0fb1-4ddd-a7be-6232e4f4c342-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfa7605d50801f0001e2fb98733b53b5df6494e7afbc2606c9c1c5a4c04c9dcf
Date: Sun, 14 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660494052

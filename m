Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8987F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651569358;
	h=To:Subject:From:Message-Id:Date;
	bh=C0sie9sRkGUiCs0Iw7JnCbGUNRwRHhms42I2LGvi2yo=;
	b=bysKPQP0SJJ2chz6rtrcCLJaXqTWNSZFuuZ5b9YECZPjVojn3vizFortlFDwLQXt
	ZsZzZn+NOZk2lM0Nx80wzG275Bi3eq2yo1j3luIYk8eGUQgBt8h8ZLFbSox8nX5GWUX
	U4VBdeGESGu4o8i7BXyF7pRs4kjD74xxIYxNklfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651569358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C0sie9sRkGUiCs0Iw7JnCbGUNRwRHhms42I2LGvi2yo=;
	b=AJFPrQMdOcx7tKruDsJL2l6gd/jDLHAD0iBRaBmqvtmbiawy9/YU0n+KST4GihuI
	iptCaviCyosrnISu7gpSspZFwegrP7vVltf08bkjcdJfZxaFHBQm7eJrF+dvdNbc39l
	pUQffL/aqzIIuQZoeWprXHeNEE/Pq1F9t1kwG8ZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089347581-f6a07177-315b-40fd-91f8-269600759fd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 911c8dce9a4d6c25aed0ec3e892e890840e72da807e64103a185d4f3f9c977cb
Date: Tue, 3 May 2022 09:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651569358

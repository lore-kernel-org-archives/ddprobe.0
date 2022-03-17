Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947394352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647523284;
	h=To:Subject:From:Message-Id:Date;
	bh=iNR4FgAi70Xobt8tD3fCs//Y8rrQObR5dQBw5rfSFWQ=;
	b=gFZztAg7dJWL+2ovcMiXCjRhKZbQ8qYdJZlHfNVNSo2trktShXCB599oH/WbIBB/
	8GKUCmixli1cjMtLiyNvzuflSlvkpyfaDhXFcTiaSgmrGpg+B7mC8vXH3G+XiktCe+Z
	NxtUcMKmJ+z03zCthaWi+supCd3IM7h7J7NSBGoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647523284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iNR4FgAi70Xobt8tD3fCs//Y8rrQObR5dQBw5rfSFWQ=;
	b=C0eZCb4snSxU+2XslSWuZyAzgnBh23qyvqBqSk2fslX1F5aiaoKRxEg1YzAzNhLM
	pr/SOHHj4N3HF9gzeysO/RuEzk61s7FSeB/29R+uYijIwlKnjY50EqAfwOy9+9T6mFw
	ESqPbI3qfP6DuH2ve/93SCWG7jHzoSMDSTKx1Mg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f980a4700-947f6104-2933-4898-b41f-a87285bff021-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0311d7c576eccf7d2eca98c4b8c59d14080e1cc25238a268bb79d63e89d7d629
Date: Thu, 17 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647523284

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D7C17E
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646125885;
	h=To:Subject:From:Message-Id:Date;
	bh=ReqPLxUtTdOQ7wIFbFmcWQ84qxkqUdeTSu//fULb8rs=;
	b=IdaaufKPrVMNvTuwIK5v9RfzyKzE4lqymVLxAD8lpKVzV3zkSMZ9DdQx9FUbS3ld
	j1JWnEi5Yh4ACb52w6y1ZQ892xtm+r0z2eyq6BueYkz26S6SrznzvDtyM6nPH63k7Zb
	A7d8FIbaT6DIvUZ7LlP2ZPIEkHBmh15kwEUESXXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646125885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ReqPLxUtTdOQ7wIFbFmcWQ84qxkqUdeTSu//fULb8rs=;
	b=lJZUshZWVNg7UnCRZaq0F8SYq2DdDY8PP9dp5a+Nrt7VVLbC6t5ijlFio3t10EHI
	Lkga1puxKFyVpZvjq1YeoSSDM0y/TZVBQ9plT2NtCvwcDW6gDYw50HubugJ4f4n/pwJ
	Djv52azk/FKmVaY25V2NGiV7fleTXuwPo8I+YlPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f44bfa574-0ef92b14-12bf-49d1-a196-1d08d64e5ae3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b51295242af36a64a1a6073157abb110c0c0316bd49a3ec167092bbbc6b1a4a4
Date: Tue, 1 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646125884

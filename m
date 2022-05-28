Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2720823B2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 07:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653721739;
	h=To:Subject:From:Message-Id:Date;
	bh=nwSzMq4Sry6V8czwYUkj9tvxTP6KVd44ovLAFI4gXOM=;
	b=Fz9nRH292oTdiBerv8OI8ZLFcUCiLTweEqFG9OPePnE1B1J02O5L8C5SrZlebgto
	BGvs/v2bQKPiXezTHp9+MA28GKGCf6t4zxf70Pf9uqQMATQkxK3Y7gvK9k5w96mCgRI
	yXX8Beh539BBj3mW7q1f/Ktxzx2eJBjNB+VhZu1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653721739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nwSzMq4Sry6V8czwYUkj9tvxTP6KVd44ovLAFI4gXOM=;
	b=B/ZmsM+22UTHc+RTrwuKy7KD3vGp4cGYgWnDdsot1z0IRg9NEKx8zAHbLT72roc/
	y0I4hteDny1dSBg6jgV361K8HkssRxNeXeaD1103g7jirtsKsVK51KECVFo01Weiifo
	EBeCMWSwB/LipEEt9xtKDLG7rf8Hwxnw8itYxY20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181097f3041-384c0353-bbbe-4498-896c-b96e13156ca1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89d087590793e9bd1df58dbaab091533ebc8094d0935a9e78a9003a629273713
Date: Sat, 28 May 2022 07:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653721739

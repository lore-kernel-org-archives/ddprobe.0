Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA217E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646412684;
	h=To:Subject:From:Message-Id:Date;
	bh=GRhUJiCj5zJluAfPvTUmjr2q8SBzzZa5Yca0V397ihk=;
	b=UQhJ+AyGyaP5de5gVLfzuSMNjKJ+OqKxnvQoLT28Z6+wyW0GlCfAJvNowsjE0UI9
	l5mx+AV9zsjX1RMb+EbgRDjTX3Yonpwf7W6+ZH1NJWOTXAxEQUUeVvgKtMMWI7U0BIO
	1d4hY1tXMpYK3s9Yi2OOq9e1Ie2IWAhPaAj3dqMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646412684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GRhUJiCj5zJluAfPvTUmjr2q8SBzzZa5Yca0V397ihk=;
	b=StJtkLOpHIunwhk5tPNWFTRZImTpFQHjLNdNAthrQGyiXtHJe3lihNU2nyBlARSm
	Zr40kYZnjg7W/MoEG9pSKSwWOp9y1e8ydHENiwe+SqYsflCAze7IOjrYwICn1o3e2EK
	Acw/Purr+DtGGgARo5YiHn+HN20KxSt9lgX87K+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55d7dd9c-d0cf46a3-ffce-42ef-899c-e2ee127b0ff4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e8a99a0b5f686f3dfc5b8c565901ef8e3ec8cf1d8501d47530630ff60df19c3
Date: Fri, 4 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646412684

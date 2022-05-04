Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60139179
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 14:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651674718;
	h=To:Subject:From:Message-Id:Date;
	bh=h7HSW2jIJeIxFelib1nn3P+mjFZaapLJPNP/j5TaAJI=;
	b=WtsVPeNnIer3W7vLbQ3c8eqKBw5XRIPb20VwFLBvX0RgOzouCTcGRkdqXBmZ2Kzb
	5nB/nYR0cXzfujcMC/2j3zcjrLJzSDLGhH/E2Dd6riV9oySpC/pMcIGPPSdpxO6VucU
	fAzGF7wJHT9Iru3gjCMKX3ebVgZl2w9BeBhEWXO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651674718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h7HSW2jIJeIxFelib1nn3P+mjFZaapLJPNP/j5TaAJI=;
	b=dqH+Et3anztBKXQu5+k8dMgBqVoN0523QLtpXuyaR1fVE4EFz4ed5ohq9qnVo09V
	gI1ATScTvR0hjDQTo3zpqvDckIZHaew+DfqgOj2tgcUwGYlLrmWgBXEg3IDstPjtv5K
	0nPdAprhDjhf2ejJZ9IXMFRl0GfeIsiE5QkiAA98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f7c2036-c627bfe7-ac42-4a73-a9e9-ea5992bd908c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd515d0e047289ea184d4e4cc391b8c1e8d258329ef344e6de364b38be3915d7
Date: Wed, 4 May 2022 14:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651674718

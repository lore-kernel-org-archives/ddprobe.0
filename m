Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A14B7C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 03:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648696318;
	h=To:Subject:From:Message-Id:Date;
	bh=tLubCgizUmV/NjZWbJfbctcYL3LMO77mOPTp6RWEDWY=;
	b=CrO+yaF+g5NSqgjXLP0m1G3AzVCwnqbrPSYZbvqTnHC3w8X6kojpSeET8waog4nO
	TEHS3cCWLOkrfkGdT3vZCUeT3YT85slmGXgwUv5AlH2gUrOAJ01dDI7bQ482UCuMboV
	cYC5MiXzY/SijNEytry1552uP85dh7imxaZagFRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648696318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLubCgizUmV/NjZWbJfbctcYL3LMO77mOPTp6RWEDWY=;
	b=HShNE9bTCVJLBVXuya2Eit+EkAOE72NcjR/286Q6tUlZNdlcHPzGtvSpZTV08x7F
	WdPT6VXZCk8VWs6cERgA72diT+ijfauz/UAUzCu2GnjPYJQ17XIVLjR1NLCA8v35vKr
	e63Nqx6hUdY2z1SblnQPe8WEYT9pxGSkJFLYdWNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fddf55969-ab8e94fb-3e41-4688-b527-f38b715accdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6045a364abcc30118dfea24acaf2721f3aa5ba49113cfac58cd359bff4b68fe
Date: Thu, 31 Mar 2022 03:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648696318

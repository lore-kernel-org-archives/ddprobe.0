Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA731391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648030884;
	h=To:Subject:From:Message-Id:Date;
	bh=CCzIhFxDNUtXg6qiIgkFPbBgewNt4Rd9e8FPG2DBlTc=;
	b=KJmV4vg5PCEy+MMIj+7vzCrHeDjPB7A7nO2f2LM4pYhvtWm5ByOB73Pc56JRR8yX
	ep5frGYvesvaIQx84rIj8xubr0RkhUwXpFI0NSdXZ8AAJKmbzKArD8rg2Jjbgftw0d9
	OC9LwEJVMt/xzlR4kmRRtHS3M7tAz+j+5Fa8BVGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648030884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCzIhFxDNUtXg6qiIgkFPbBgewNt4Rd9e8FPG2DBlTc=;
	b=Uio/u4FCQh341GGCsa3IaOdLB7GBrZ7YmpRFWoQr808joGhDXg+s4cdSr8X0jvOk
	YYgWb5sXvdHn50AVN7RfA+DrAMEl3xS/holggqc8BonI8SPgtFx7Il04xYUX3U9f9RB
	u4KqWJuehnxHHEf0eofj0CnB1tqAUcyFsjyP4gO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb64ba392-33c05fb8-9e40-4d22-9454-6fae3ecb2c07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 713c893cee49b9a5ed5a15309c0a27879debb1c66b2e913882ed9db7d83d57d4
Date: Wed, 23 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648030884

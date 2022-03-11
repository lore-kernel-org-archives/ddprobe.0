Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C3F7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646976684;
	h=To:Subject:From:Message-Id:Date;
	bh=Hgjsl/pOiyQihoR7hwtTRcHbzhA8Whl8/RCtyH9Xdag=;
	b=SllTprexSFSpOPbFqgdC3sN/s9d6lxV1XRlFGzNmO/68f63pcIvBQ8uHYaflIQ5z
	6ugUntVT2h6muo8TzUu5XAn55ZFkSldGNCS/ctuNLWpu6z6vvF7OYLGWfRoF5ate7lp
	FoPM7edymnbxyHoTusSIFGRMoaAqIFsaSDFuwYPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646976684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hgjsl/pOiyQihoR7hwtTRcHbzhA8Whl8/RCtyH9Xdag=;
	b=TR3M/sE2gg/JjBn7HrckzftyyU66Zl1aQg0gDFAMQN/z5jIJUpQ/Y/9oyFzmAejC
	g+Qlzh47YmUclWLpEg7b619Spl7Rt4vEse6m8h4t6DusL2y/kjMzwRs5J/W6Lprmjeu
	6GwXzHXjvmTy2HcNGGVcfLrW/ZrjIZ8MYvO36BPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7775d2b5-f5c037e7-d578-4b0c-99ce-bbd43de74e55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14d49a51331d85ea3c480da0253563a1a082577934a69543c399604e118e62af
Date: Fri, 11 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646976684

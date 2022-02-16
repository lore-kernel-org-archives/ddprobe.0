Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979171B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644995785;
	h=To:Subject:From:Message-Id:Date;
	bh=9HQ/N1iH6gzee4hd+4ehqVN3R7u2VLQ8ZSCl6RFKjYo=;
	b=ij1fX+8v0+8P2iT0645NYl8juXIDUujPq0PlHjjmLKJ/9WWUf5KYou2l3160wjNY
	1MdU5YnCfTtdAuJMd3qQD/yvz2iGEHsOTPkKDPguc2301aofgC7Ld2lPPQrnWsOabqn
	uaEFhhaD+kBrOTYYWgtGrJnEUqc0Muu4A4nyN+6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644995785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9HQ/N1iH6gzee4hd+4ehqVN3R7u2VLQ8ZSCl6RFKjYo=;
	b=KIAY2zTVdq0Jln4HJbnWXp4u1XGKraUkYOERbVSq9hAjKAiPD0uy4O+9WADlsQ4h
	UgPYiSmqO5kpIoHRuQm0Jl+hGC2ZYZagNpXHvMFgCqragJC1gOCU3Xe4MZqUCRJD/D7
	FjQ9Dvchl/HHB8e7nJ5gLJ58fJbmmKfCHlCy2K+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0163b04c-cb997a95-aaaf-41ea-9d96-64e811905aa9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad0313ee8f30a009fa7923404c703b1d58d7dad1f6f9e0b530e2f47817852657
Date: Wed, 16 Feb 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644995784

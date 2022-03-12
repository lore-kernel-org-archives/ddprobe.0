Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4404280
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647087984;
	h=To:Subject:From:Message-Id:Date;
	bh=ukZiUhMXhfR8CHExp8v3jg4aApAz36EuJOdThVOYAyg=;
	b=SYgxzBrUKcFUCTRaT+V+VhdzZFT6EwQmvY5174Ndm+Xb/phYC2pBXaXPeLUdt9V9
	bpzma22ID9hyKOWOHarfVs9GmV1jkCl/RomFOqvPZu7RUoXieZhluQ2apH+sbYYWPc0
	2s2VnerKsNNpnOztFcPO0tUD8HPC0xaoAlq9sIUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647087984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ukZiUhMXhfR8CHExp8v3jg4aApAz36EuJOdThVOYAyg=;
	b=dFfy6cWYRHDk7WcvmCaLf76QPjZxPpjp7fQJtO4lR3C5wHIkw0IHviqLJ96nGQoD
	e7Mu/yp6gi5mFbVCv5HydrL8PtvBIT2ck6ZBGnqO9pEBZQGN//nOngZyNdLQ108aekl
	ItbSiO6BnVvdI2wmfaICFzLRRKOmX9zqFDiG3TRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e182045-1b8d86da-7545-414f-8e8f-cd3f5f583339-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6bfb4bd804e2f6ca5f7074a89f914567adc08824dac06b64c9270bcfee1aec5
Date: Sat, 12 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647087984

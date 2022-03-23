Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B374A614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648054585;
	h=To:Subject:From:Message-Id:Date;
	bh=GhXCaU10SX0Rxio0T5VEaGJbpYgKE8NVcR5fxGDDqS0=;
	b=Z07ZTjZYrzVtALHDBGCMXAEvpDFDJ/p6WrJaq4zbfxxYfbhnVAlAqbJ2rZ5QEsvP
	CO+lK20lmrgBOW0Ey3oBhzZDSfSBHIbBFsEa8vcTtwdMmyfqWSezHvByivt3CjNn1ET
	1CqY4Ij5WeBEgEf5vINQqV3mLVE1V5TldIzCg8Ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648054585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GhXCaU10SX0Rxio0T5VEaGJbpYgKE8NVcR5fxGDDqS0=;
	b=K+AudTT1S0IBqo7RhUGzWxBX1djhNu/KPRzSC5w1SdPkLfmrGm2HfQJ3zgzU595Y
	YglhcYXCsO9w0e+S7841SnVQCWr2awr/hYwHMKDKDrFyfdX4sIjYq32QrCV5yJPNfyS
	X8EVPjjV4W7rT4XbRbpW2hKzcBZx3j/nW4gBiyYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7b545f8-ece45ba6-d5f4-4814-8f36-5d53e0acd009-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98caf572e1353eb8ef5c2a074cdd0e2b0d71a6aaa83bf735416be8ee3713e956
Date: Wed, 23 Mar 2022 16:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648054584

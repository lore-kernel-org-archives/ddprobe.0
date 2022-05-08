Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890CB10F8
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 08:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651998178;
	h=To:Subject:From:Message-Id:Date;
	bh=3gw1O+XDKr3nVbQ2g887M4omtxsGcjpRHJbrryG6y/g=;
	b=F9ghtrpLrM1wh6Yf/5yHbFcSKo0CUA0BL6IXs3tG556r1fv6++HD3pSNu30Q2a2G
	6KQXVvvnuAcMozC50gNvjxyZkFTTITaMtTbQPKL9WbOqcZ/tbsbseLIMfMzY3U11qj5
	r4+8jLcaDJAspMHykubd+qSxXzZEwT263GQ59FJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651998178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3gw1O+XDKr3nVbQ2g887M4omtxsGcjpRHJbrryG6y/g=;
	b=FimtbZejliCpSWrFCauqWQBswiWH7Df5SOrPbhsnhh6sDYM+kSWlDRi76rFySy3s
	2p6e9amhxapw+uphwUinLLe1HRSN0xBLEEoyVBAW+0850U/WQrSefZZDfGaERglLFLF
	DKM81ivfdmFnfXPzxkagqo6RFsxMaVCeDllpiWdc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2c3bc1f-4e539cfc-af59-48f4-ab9a-80ad6957a93a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dea9526c07362d545c021bf356baf7a780effedfa19c61bef133f6e22778da5
Date: Sun, 8 May 2022 08:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651998178

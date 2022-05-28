Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083D07B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 18:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653761759;
	h=To:Subject:From:Message-Id:Date;
	bh=+5u33k6hFYA/neY/XkMAkol9QWU+rkMrOWwxnQDHrms=;
	b=Fxp4l8I7xbWNSI2fmahqe/B6j+FgOB58CLyGdCp/42vmsRSg6h+0SYTaQPCF03Sb
	/H4/kT1CfTwOg7Rgu1T3cP/BTLXFGs7mwWaGQkePqktA3b8+Q1QdnIy5uJ1Pm0zazIr
	WsmANFAqWj3f6eciHJJJVgb3ulL31u5gHDo32+fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653761759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+5u33k6hFYA/neY/XkMAkol9QWU+rkMrOWwxnQDHrms=;
	b=FpX1FAMFh1HboifZDJwdn34zCq4R96DuSced+dHkf2xISHtjDGsK9QinNmGhYfeS
	4XYS+Q6Qb7TzQ7NvD7ZfSy1q6yZxrROsatZIfNkPhPJ7kxTnfji+Hp4Z3chaxaZ3vRF
	S3twOziJ9Gf3m4n7C0Dt6aipzcQozmpQsHmWcQNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810be1d81a-7edab095-7276-424a-aa1e-58cdf4d00f20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7eebcb67aa6bad1078c9e621a122cf61c0df892732b6ef7ddcbf0d7fb58804ad
Date: Sat, 28 May 2022 18:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653761759

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFAA1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 16:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655914740;
	h=To:Subject:From:Message-Id:Date;
	bh=IhPdJJXAWrDDbz0LV9hs8hpJlIlFWe4n/StsQRNHJwU=;
	b=QdOoiKeG7rl8oUnerilhDRy7dKkJ0o58YaZHDEjQz/PoXKmIfpFwOldBdaM2RvNs
	0+FteKfQKN0LQ8utvJeYLXnTxBFkvBXkXaqzmbASaWEOjmJA4EuosgXeMbcCpGlXOM0
	iCYsHZheayMFIcgEuLg2WTCyMhhDVrcZXfstymxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655914740;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IhPdJJXAWrDDbz0LV9hs8hpJlIlFWe4n/StsQRNHJwU=;
	b=RBfBZs1EhvCMBVaKm1TgZpswy61B90ZJz/iQ0FG6tP81xvICuYlZBVH60kSkkufx
	rl+KKFEf6lnkWJvrRfP1lH8zVkkVUsUlOqsR4OpfcB1yncAnXPk126ZIB0FWbtX9SZH
	quWoZ2rc3261YAB9fvuTAAkpzNfqsjFKegYHzWrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c35b670-40d68840-dd11-411b-a1fc-8b5f112d275f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf9b4ecfb0bfcca6dcc5b9ea047f014dd636550c053a197a9ede86efa127f918
Date: Wed, 22 Jun 2022 16:19:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655914739

Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DA11854
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 01:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654477379;
	h=To:Subject:From:Message-Id:Date;
	bh=vkF92vbx3/tJTgP266EOE01zMgEGvfdPK/qPFQQBbYo=;
	b=fc7hi1T98fsyHsAkFSU9MBT4xxnKFhoMBm9NIEw++T2nWQ1XEvy0CjNeCj6cq2hR
	m1kZiIHqY7wDWrPFoVScH3JIO72ksIIWKNxEuZC3fiu32yUxIww7TI6IaRdGgbCqkvp
	0wcDQZ4bPBC6L09gYYAl5u6Keo0EiT3cCwbXJyOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654477379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vkF92vbx3/tJTgP266EOE01zMgEGvfdPK/qPFQQBbYo=;
	b=L+qG1DNCMGTKoI2pBoI/IEBmlH3ijvEttP1AiFXv1JOps2+0i9JJLfk0pkMXJudW
	a1oRd5x/2w38S8qsN74AWPocSK9v8TxVpFf5oksE3p3JsmTDEYPEDQJzRwxt4k+sd7n
	6Ur5j5sYz3re0to0ffrwnJGhfQ2uwSRBSk4B51SI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181368956e9-e60bbe1e-1682-407f-b121-ea6393ea6aab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 147d4af230a50ecbf91c5953f104f4f4682e7b7af75aca3e694229107c14c433
Date: Mon, 6 Jun 2022 01:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654477379

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CA71378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 07:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648019185;
	h=To:Subject:From:Message-Id:Date;
	bh=VSJa3yu0uRAEV53Cyo+wgIxQhMz6E+BPiHSaFEWGasE=;
	b=dnOaO0LUt+ueKSLATTwrAiBFNz2QE/NzQKSSU3bQCBudMGwDCN9RJ0Rtk5+cMiO6
	KgrQJV5A1iwABf2qArHMGx4T7B1ZaWO+pjikfW5h+6kb+Q8yDvzx4tm3ILZOFGXSWQU
	FOPx4QSTud3XADkRJdMtDNTSvhLe/JNRfFYw7q9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648019185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VSJa3yu0uRAEV53Cyo+wgIxQhMz6E+BPiHSaFEWGasE=;
	b=kqj3ffEgASfXXXg3mf1dJ1sl3tYSK3iXh3iwv3Zw/Db0c27hdHcWZMQ3wZGR5FQX
	hvu74Rc2M9RFypm7iZM2OL3au62SFV87dSK2T3G1EIYV3BCdFuqwur8VriIav43pfAP
	vF/F9TRLNGAIWh5wQ9DMM1xaBQQh0C0jPsiwMHCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5991cdc-13dd11e9-4006-4c74-9d2b-07fba9a4a12f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0830f19cf5bcf9647a3f7ad1e20a086c8b7c604aa69a3190119c4f18713343d4
Date: Wed, 23 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648019184

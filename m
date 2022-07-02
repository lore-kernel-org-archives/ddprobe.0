Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A304423
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656800812;
	h=To:Subject:From:Message-Id:Date;
	bh=q2bxfKardwsaVnoIzJ1ISbUnI42kKFnymT7xclyQPKw=;
	b=XDOh0Q4ahOb7UWlEpGbh8y8htXyPkH//dpYLqhGl2VkgYofCdikdxY+HHz36PpG7
	nrMmeW0LvnJbaepr5lhf5vEPyqeNi7Ya4OAt6uZCmxqBW0eGPsyVDZ1NNebsMu1a74y
	TXqzgnuFb5K6LxDBRtM6aGJ0Cx62Jg/XExzupeaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656800812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2bxfKardwsaVnoIzJ1ISbUnI42kKFnymT7xclyQPKw=;
	b=iQGforAzUBGflHFAjVSDPvwEOll7ubPrPdC2Brjk2VwnUWBzzDcz4DMLxLhUo2OR
	X92pktGdJEIGBih+Z1C4gn4c+dm+637mni+6IpnrVLM0KF3Mxv7kLqsbaV/Z9siXsnj
	C/csXrBprNEtlYRFm9HYcuDKbeUPmqj62miasIF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1061cf5-6da77f0a-5456-4435-8681-181616e09347-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45bb943a4930e3a5423bef0e929189b70f02d9bd82319e86a840db4738f2f1b8
Date: Sat, 2 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656800812

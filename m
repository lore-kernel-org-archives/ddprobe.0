Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594EF7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 08:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654590239;
	h=To:Subject:From:Message-Id:Date;
	bh=dU8bl7ArpnRvIHNksii7NkUgNzegit+CTukf0c0kcbU=;
	b=Ffco13vIlLh/stSbqtlxln9HH6+sZFeBV4BHBcB+9NaRpEFje5IWgLq808C/Q8RL
	ChbANFuecrWW4lK1tfCH58JUXgx0Hk0/T6giyIPiA+gIFr1YbtYZ+mmKl5Teg9krPlV
	5VhOgCV3RDf8HQprNRC50qai4mKMw8HUV3SxyJCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654590239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dU8bl7ArpnRvIHNksii7NkUgNzegit+CTukf0c0kcbU=;
	b=QUHd0Qx7ulmz2HXd1zg5AOwCpVh/WUBcgG+HktwyJuBqU4UYNlwKWWqVILwX0dgr
	1TpugcoYzP/7fzMv1V2o2YuCUBJ37Muwr0Q9AkGn3BxsNuk7V+P+5He7BmVgo9tWA8A
	DahlVVdeyfUWOBJVAyzMS/vUxnn2pMqyO+CtInoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d4371f3-299f6909-00fe-4608-b3be-7adc8957f746-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d60b8089fe07978f3b897c1ae9c317bbf18e2a12be4a7b80f483ebd1761804f
Date: Tue, 7 Jun 2022 08:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654590239

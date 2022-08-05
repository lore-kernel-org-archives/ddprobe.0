Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6198FED9
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659705652;
	h=To:Subject:From:Message-Id:Date;
	bh=g+31BwpBmz8CON6b72ikJnqC+1Z/2jHbKYB/a8ahUhA=;
	b=CKvvp8XRRsCX6d8vOZu7YzlPyNB941m8f1VaZxxcZmHNPFSSyLFJPMhhxSzM5gLV
	D5r8LPq1n/fyDopqH1xZmQe8DOjGxCHcfNSfq5aOrTYlQ0f36C+F48piikRdinoeMsC
	4HpGuaW3Q5ArAXHsE1anSbs1hMjuG8JRBMWXU6N4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659705652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g+31BwpBmz8CON6b72ikJnqC+1Z/2jHbKYB/a8ahUhA=;
	b=S3Kgbs8Nr8CQAJ+ojPoLeGQbqYuMfFGtG/tHqPzZd82Pk+p3BJII0ttVwPnLllW6
	1ance298mU59wJu3EpYnwSx1rKFPRa3ZvUUoBM2ZcpztfSDCKZ+JEXdBtco2ZKHeEpz
	06fwBwIEdYrwEGCKmuFiCLffHzw8TYBqa66edEPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e2a7564-3d76c2c7-77ef-4846-8450-5a30cbb4516c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5901c444226c7fd288fff709e7213065a87265b8a98c557f2c7b2dfb56533d9
Date: Fri, 5 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659705652

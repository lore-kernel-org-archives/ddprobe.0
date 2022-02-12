Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E2A7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 18:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644689427;
	h=To:Subject:From:Message-Id:Date;
	bh=Jzwc29BroFDZlBPHZPsHOSmaPk5UPGEqGgyIIjK4GhU=;
	b=ORzc9Le+Vy2KIsCvDKsPtrSqZ3pXNu9nviGfo8GG+5Uccr7aDBzhKbr4EEEMlHSL
	iKFY50NWkVSnScClEUASiRjw3VXqi7N3L0Vc7xaSVFTQWg5H2RuSF3TjVczQih6bZ7v
	DeSMGeNTU2XyNhhBxhSrfWjf4JHSsurF7kVeTBIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644689427;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jzwc29BroFDZlBPHZPsHOSmaPk5UPGEqGgyIIjK4GhU=;
	b=YiTk5d9yr0qvDmSe0Gi+KnfO1Qqd8w1i+m0JeF9JcwUKCGp3F0er+PIRG6WjMabO
	z7fJi6/0BVuJf5pIPGfVT1JNys8l2w+Ln7xit0YJzHgTYdlpZwFP7dOLMu86ynMhfxV
	NV9JRf6T82O+s0XSIDilw63ukQNWtkj9lnFBSCt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef210cec-382c48d6-17a4-40c2-bd84-d10c89effe56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a22477ed11e27f390be935724a7e97c51b6315046205aadd93151d20f01e022a
Date: Sat, 12 Feb 2022 18:10:27 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644689427

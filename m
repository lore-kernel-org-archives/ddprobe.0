Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED07A2919
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645028485;
	h=To:Subject:From:Message-Id:Date;
	bh=7P4WWAU3vULsIgmQfBhsUd52HI4fOA3+0hHVgfF+tCc=;
	b=ieX590e/8a/y4BVKQ6IMo88+k9+k4Q0veQPxTT2PcJlvORdvDKbjIj/dcgMRRhvZ
	3I1qqtA4QHj4HgcZfWucph4+93vxojsp2vowh8iyBSe4cNHiVv230OxQrsn931UlNg/
	cOo37x6NB8sropOmJe8QCGdglmasnJMCZG/irnJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645028485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7P4WWAU3vULsIgmQfBhsUd52HI4fOA3+0hHVgfF+tCc=;
	b=KNAwsdkgnn1GwrEErg6jD+7I1wDOx1TvAUNUP6EPdgX200WKUhKKkghrt9W35vpp
	ZKcLtumue2QD9uTMlhTYhFSejsL1JyobCEAqZR1ZG3ZAXrBD4nnrAkFeIx0JdWzFHvx
	p7J0DHkZ26gU2c58X8WA834b0ToXDzZjiOUeNHUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0356a6b4-b91ba3b5-bdfa-4735-ad01-98d4cd6d300b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f8ce9c6b7812b2978b6fe3cb311e5831fc72f8c4bdb1eb1721f0583baef4a43
Date: Wed, 16 Feb 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645028484

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5A21B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647332185;
	h=To:Subject:From:Message-Id:Date;
	bh=eQll/gKgttr+Qgpz6FhhjrCtszwHLE5fdqLBMYJCjI0=;
	b=RyxECjXJ6WRUZGqQMasbXg27zxc/l2UU9027Wcd6zAIi+Ub4ZvGKh4DB9pwcdc6B
	dMKr7ZtNCJD0UydJCP9gy8e7A0AnZzhhjs3jvfxVzaS7k67B5Ay4IhHw24CTdA+/c6G
	OzZih+iIhrwpv86BFATAdejY2XA13Z9unAIS1A14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647332185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eQll/gKgttr+Qgpz6FhhjrCtszwHLE5fdqLBMYJCjI0=;
	b=PSGIdqfvtEcgJrrlLDiZyiV5Urv5wrznMcsbDwsx1hExWK6uBpM2MQ+5bFrxJLdE
	YT0zH0weWkd4FU/ScdfUls/X5F9yvrn4DGWgUoXZfb7Cw+n2ADQCP6KqTu1JfVdySbB
	cqHTLDl4fQu2aXNNpXNpcS3wIQJlHFtFvXGaoSLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ca6533b-e59ea830-408e-4b21-ad2c-1303febf571d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59d7afb2989741010bccea4ddcbd60128f4bdf2594b33c4df6928370521b4c8f
Date: Tue, 15 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647332184

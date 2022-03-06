Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E4310EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646530285;
	h=To:Subject:From:Message-Id:Date;
	bh=q8Qt8V62JcvZIJ41O1DK8yJR5KWMq0HZcFFL6ZorFvE=;
	b=aZtnr+k4TXk7xPbe4i0Kfr2jLbZSga0J75MlfxkRp4pQJKlj9kzKIVWfT3SkDR1d
	757ZY0e2Q8C1eWsXzLOPptUY2TV0/yvxoeXpFBRboQnX6xGoquxczbJ2ngoVlJqgi5j
	kamHRHWYqLb28pxM/Kb2iIqqAbzEoAuuy9OFYrHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646530285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q8Qt8V62JcvZIJ41O1DK8yJR5KWMq0HZcFFL6ZorFvE=;
	b=jsoWWWKdbsRXgNad5dgEnCTszvDZ5rvHi7cV1uIgqhtMl7egNHYwtsQLpuMEfL2o
	/otZE2mVN1J++pAVjNezYK5iDODIskMXpK04myerd3fePUAwlGbhe9FIfENuuH/0pM9
	DdPzbPBQxFzlfvPDF6cmnqGGfUY3KueuTfBwLFXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5cda4ceb-b3382cfe-c87a-46ff-8f43-90ed2663c70b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46d085445831f2655745447ad3d934df9ae2443172d31bc043a652eb5b43a7a6
Date: Sun, 6 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646530284

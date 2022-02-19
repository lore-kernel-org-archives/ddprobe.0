Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E195124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645300285;
	h=To:Subject:From:Message-Id:Date;
	bh=4i9nopwLQ+4khsd4BhnKH5mpqAkpzBGNEJp52pePVtQ=;
	b=AA6E+nq22c4rNosh27oUHeglBVSoWzFGYqjODKrYYDjf3rqONvy5JWom2fT+Kh6w
	MvYV91VadYyBoSv9uOO4z08JtbWw9Hk8VFAGy8E3p+EKrucCtnLwlXzZ6w6UZJjfbFV
	2MwJ3Vx5F/VpT7qTmLrrizs/5bADf8hqrrzeOClc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645300285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4i9nopwLQ+4khsd4BhnKH5mpqAkpzBGNEJp52pePVtQ=;
	b=W6Aj4Vc2POWsYXftE5OGoUStUE0p132KAanO2MUf4PcuAJSbzAonF1OuxjEcPIKC
	gjxj4V5teMBMa1P/jASZ7NTmckL2xEZKnDZ5cKEmwLggMhBoOwJwiwXe7fJjUcvsIYU
	I9951eu4bwlKenGrBiHaNkWV2tWmRExFFpp3J1so=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1389fddd-8a820ddd-7b30-4584-bdc8-f5f6a9d771e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8eeb10799cea57f24148efcd825edfced3981353c25e73d4e3c8ddb84f5fd93
Date: Sat, 19 Feb 2022 19:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645300284

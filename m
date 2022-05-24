Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E247C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653391559;
	h=To:Subject:From:Message-Id:Date;
	bh=ICqMyJfJlQU045xz1+HodSIqTZrn0KCVJKivQi6Pmc0=;
	b=GCHviB0avKUKn77PglOO1LuSm1On2MQLLHcBNRpDvjNen6fRVdPIWJcLLKYAmvxL
	f+T35jx9tPZml98wz3KEX5jXsbV2CHjxHnOQiIfUTmheqelHzhGQb2uj5H940dfbHo8
	FjLpFMOFlkTEfrb3fN9oZgY4scp87LEC2qugc0bY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653391559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ICqMyJfJlQU045xz1+HodSIqTZrn0KCVJKivQi6Pmc0=;
	b=aDhJHSq78I2aKvFYZTykfaEa92dI2BnUlaenEsxQZ0eXtSJnu9qb3FeYSfErEa+m
	0YBiETxU2HnBFyUytvEDv/pRCxwOtaYjYuxB8knIgxM5s/tKtgj5AkKQKNzgsy24Nk2
	8B8hQgpSQ1HoXHOlp+uCmvM4/8cW9Fo5UsYuUvpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5d10a5a-232aa418-fd65-45be-bee8-e70a9b031d15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 059c0349c28e8b86acb40e274ddd869c640b09d18e02a08396a330a1307942d1
Date: Tue, 24 May 2022 11:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653391559

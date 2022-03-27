Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537567E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 18:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648404898;
	h=To:Subject:From:Message-Id:Date;
	bh=VO7Gy9YAhpdKEiu3jvuLi0Pnz9sHOqXaAzlEqwHqmuo=;
	b=d3/PlT2JUBqmJUFDifFn1cCwkEaW/vL85ZqXSPihNUQ6n0IdEjbMloZqq2b3ScB+
	0hfJ1yBR7BrvyvI34vzXYtAWVSwn3sjuWD3IiRU1ynSWx01io5V4F7IFvZdQvRKS2Av
	DWcfs3KeKSqJrV4VVucL/hbUySjVSymyvZXc4yME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648404898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VO7Gy9YAhpdKEiu3jvuLi0Pnz9sHOqXaAzlEqwHqmuo=;
	b=IjnPOOC2eiEch7L5IC2YxIOvi0nvV7Djg9nahCtKxSWH28e14wYIwqpojH0CMoFN
	+dq3E2/jUkN/cqASnHER40AxWWRDJSs3uqDbehTBHo2WrodHaWpOs0Bp9cyNLkDSdy8
	6m8WxO/sqXI/ksDutI1QpW9/QptsFUv142hFmkKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc96a236-91544be8-c545-4edc-804b-038322c78e90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cb2910b83b36c89e097450bf3fa674d885aad80c11278343f87dc2682306915
Date: Sun, 27 Mar 2022 18:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648404898

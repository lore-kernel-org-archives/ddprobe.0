Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A3B2FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647416484;
	h=To:Subject:From:Message-Id:Date;
	bh=vW2RkJ8B8sUfjeOT3G87JzqBbaMkCfaHhzJUBUAF2Wk=;
	b=U04tMqa0uavrwEK7EBLfx8nefkH6FaABqOYo7OK2vO9fsf4MowFHhk272GwdO8wr
	OIFiowjSevHahxgECGSz1C9oSpU3YuNzIa2y9YfA6mHC7MYiH86wsJ+sVqA/K2BCOYM
	+5PG7eSpS6X/RJWsB6D8pkuo5R9XCiMls93ygzNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647416484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vW2RkJ8B8sUfjeOT3G87JzqBbaMkCfaHhzJUBUAF2Wk=;
	b=PfwnYdQymi53yd+5nIsEOlPeiMpqYLhYsGh8JqoKlMVwhh0VNyRu4IAS86YZdJzL
	WGAUw8J+mCV+x5dsK2djoplAK72a4af4jNZPB2+aesVTmojbQA4BQlUQ/53jAcoxqHI
	Px6rcu/0fmgq09mUE414DU4zRE1mlhqCd2U90BEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91aca3a1-4edfeb6e-bb85-4023-af1e-368db64a028d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4c845fa0826fb2bfc7ea0624de719446c1d37f859a7f376ec5aeade0d18307f
Date: Wed, 16 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647416484

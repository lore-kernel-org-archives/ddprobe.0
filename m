Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F677C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646290884;
	h=To:Subject:From:Message-Id:Date;
	bh=GQJj0BEb8ERzsYtM0JNRXkMqoK0ZL9yr6F5bb17c5Dw=;
	b=KvRPJZ6xgN/Jy4x32WVOcTmYfWdMxTYiLMeIE8qOpQE+0j4PrIcOEwJHysLohnyU
	uqZ8hs1z51uNVLMkiiiux8UNWZJ7OYZ0BYr6IQnJsAeF6586KQh9/pEAkcP1nVqPfgj
	aDkqbZebhNJa7mvTVMDqx1CgnwKqbQ5gy1msWsAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646290884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GQJj0BEb8ERzsYtM0JNRXkMqoK0ZL9yr6F5bb17c5Dw=;
	b=AZmGeWtWm2+1Oeam+6cqIdxYzUgN7KfSxNzyMBD72BsjxzIpJ7ycfhj2sED9XOD/
	CNp87X5MXbNaftr1BUdyDT5fmh9SM8yyJ1+lIhtzh1htgyS7yOdALOWMAqTzNJ3eDO8
	HcJYcwary7GmMwoT7TNHe4O2wov1wKB7el+9sLEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4e9558ab-cac74b7b-ccb4-4d4d-b728-c67614eed54b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b14c1c70b45ab34655da43fabf77cd48f5be41a856ca2a9fbacd78b5e7e46df
Date: Thu, 3 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646290884

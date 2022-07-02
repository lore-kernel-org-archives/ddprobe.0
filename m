Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333A91FA1
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656746812;
	h=To:Subject:From:Message-Id:Date;
	bh=SwyRgSL7PjjPg+V7VAAUt9PfkU51a3jRWnBQjh6znF8=;
	b=Ve2UZxriGK950MASeuxtde2j3eBkgK4hkYJKqRo7FNfsJOhU/oVsSLG9bG78r0Q+
	sf3+CFBty/nWw13mlSeMbjbacytlJ887i9QyMbizrn5gKmoC9AmZnr6kCIt02/DHc94
	xWlBA79js90s7fRJp7DN5sAWBcXO81dBgxeCGcAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656746812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SwyRgSL7PjjPg+V7VAAUt9PfkU51a3jRWnBQjh6znF8=;
	b=EolZ1Az3Gi522cauDAelXWVfE1kF9FSJ20peZ5tBFJDTls30xVdtvsjDGWOmCM1s
	i3anNFEKypzi8iPnxQGkdXtKxaipkaiFIr24dTpM678aPIHU5Tpecwdjv+rlYft0NYs
	fqIWMYHE9/7CUaMJAsIMicy7EjeOkuEunSm1lXv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bdce23b7-cc17934b-d265-44a8-a9f9-ac035b5a57da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94661b88d3c70219f5f692e315a2a1bba9169fc9b7dbdebcdc16325460141eb0
Date: Sat, 2 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656746812

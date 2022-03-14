Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702BD1855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647259284;
	h=To:Subject:From:Message-Id:Date;
	bh=tdnd18ThyV1n1uLnA6rA/xNkpWRFlhh0JctCkO1kCHg=;
	b=Z2vmYNAdmyjCM728DaLac70IQSQT7R952hvLBvpZZ6IH1KdffziqWGSHc0zromvY
	OReimmnBiOQ9ObPj9eBDz0tcV49VWcU/7+n2DXROFPU3VCDHScCR1y78LSOCiAToyyv
	HVAkowbabA8/UEMXXiN1ilf1aC2MHd6LcZXgg0FM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647259284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tdnd18ThyV1n1uLnA6rA/xNkpWRFlhh0JctCkO1kCHg=;
	b=DTSUR8W0eq6pifeXMz2ZkDJR9j25nEWCh8Vrr1Srcl3FBqBYOX4N+0yc3CtNZneC
	VNaHRq4Vm4t+Uw3+jaRsF/xKtrmmH2q1uew3vyqrb5X7bGjSQ5XDWXIo3N7+wV+/7UL
	WbyHokYbrnU0W9hFnKj/7XLTX5nmLdj0a+W8KnWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f884df526-2e682397-d20e-4d18-89c4-7f9c64bfc555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd059e1aab749c44a67b859b8afaded46f73c90dd936bb14bf553d59a68a68ec
Date: Mon, 14 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647259284

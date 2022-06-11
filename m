Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E1EA21
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 15:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654959719;
	h=To:Subject:From:Message-Id:Date;
	bh=Xqm0bXlLLh5hxJsGqlJCIKndNAIMzTT+3eo+z2ExxGw=;
	b=Ms56JBmrX3vI1lEWaib1mOrF2zsEkYTaMFdXC2whraxiJAbIUbeg6k2zi90gBIVJ
	Um9omokrnurN50YSVR39xRk+87lxZQ95cYSHAUyOLI4gN37VGbn6mYr8nZCFOhBVt9R
	M9ETy5Y2tvHOEGmTfJDrOBNjzE85q2L6KhdlyMfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654959719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xqm0bXlLLh5hxJsGqlJCIKndNAIMzTT+3eo+z2ExxGw=;
	b=Um2e2lfUutbYTZSZ1gop6zk+Rvc7E3g5kbjWK9/UMNMt3UWxfW4v/ySk9GJOH3Xp
	tu6zEDE95zyarjpDsUKW5fwSwFOvXH7UmCXaudRTPSbbKALndKpItQIK+UPNHRSwTym
	ug4QIAoqN2Q2wvYjBsPV6zPHxd17P6EAa3D1MoxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815349435c-7bda0943-cb6c-4575-bef5-f2498e277757-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47832e41570a4711b82cec7656b7309bbe27976566b9abef8602fee0a2330739
Date: Sat, 11 Jun 2022 15:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654959719

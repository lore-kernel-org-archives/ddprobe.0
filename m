Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059824C98
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656452812;
	h=To:Subject:From:Message-Id:Date;
	bh=HySFnL0yFkaIibuUwjxHcLcrw9fZsUG8G/3duwImtuA=;
	b=Seh84hPkHi4LTNAzyQa4Ebje8iWFS54mEJPFMHaMXLd1frtRUd92CsqGYe8IPh5o
	QPBNgaPCZoNDdian7jole3Sb/JCLfQM9pLJr7SslEqfGTfYHmLuguSrwkPuWZrnBzle
	DAEpn3Al5u/pqtS4FIEzWMLG1McPZyCi08BAjOS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656452812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HySFnL0yFkaIibuUwjxHcLcrw9fZsUG8G/3duwImtuA=;
	b=XXEPSCcp057ZUcqQ2Nyspg+XUAu9lxJrXHIvz7PlTUhchhHgrXK0DWIQahe8qS8s
	AeerPcqj27M/DOJ2sfXJa/9X7LHsBY6cV0UfR2e3G0hXiQ44huYLfgU8EltHPt4lQ2M
	iPAXrvo93cHuvys2gprrxz7ZW6IbD+Y363RZtdTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac480e34-2eda0fbf-065f-4297-b834-e4893ee23279-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65dc385e7b1813f09179178a2c386842bcbda1e5af72937139dcff14bb2ea586
Date: Tue, 28 Jun 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656452812

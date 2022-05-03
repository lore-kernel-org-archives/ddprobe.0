Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D02417E9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 07:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651561558;
	h=To:Subject:From:Message-Id:Date;
	bh=Yw/rR9FnNDjmDGRYyZjrogzWOUXyrwYXscmzySWOzjo=;
	b=OqdvPf2cn4Dnndp4ys4/Kib0yAokc4lSN35oEOPainy03AWAdPn4oNePwa5RPcv6
	FDa0duC9OoE9aGMZPIhGsAR/Z011xNhSv65Jj3968w0SOGKKtcbADVsqPDml5/mHbWj
	JXKyb4oPh2QbnZvBH2zQgvDtZX4OTDgg1kHpcm2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651561558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yw/rR9FnNDjmDGRYyZjrogzWOUXyrwYXscmzySWOzjo=;
	b=ViANFc0uc/mwZsprSNN07ha8nWOqDUJvOdH+exJMzrecM9KLYhIi9jgGKmjcIIEd
	vt6YdqESNLLvVXeiqhRjGPSZU4BR9/ef6Z9gg3alQPTz3KAWt6hMmkTKkifXsifTure
	lV6zA/EC8B1kEx7TUqDas/dT0PwTliYh8WKKfic8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088bd70e1-c95401d2-b6d6-4e29-b1f2-ed4b072c4b94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9605a70f82f24979f02b4ec14a49fc3a82955cc860b0d6daef3741f5c1cd5b5c
Date: Tue, 3 May 2022 07:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651561558

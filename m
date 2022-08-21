Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5649B365
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661099452;
	h=To:Subject:From:Message-Id:Date;
	bh=vhw/twSlRns15yUW4uxANBUi8aO59+1p+lsu+Db/XIs=;
	b=houdBK9h8FyT//8UB996mEv41lAU9eRX/LLWzYmLasoVmNOxIfYDCQP95yspTmc0
	Cns8rd/nXHZ9itvCS94lykiAcQUy/AlVBoLDsSMynSOf2chKkscW6g/e3SFS2CElfII
	iMhG4+uLU5nollM7pjtfsnPZruyDB7DO9hArE3dk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661099452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhw/twSlRns15yUW4uxANBUi8aO59+1p+lsu+Db/XIs=;
	b=Tdcq4n6YgR1t78z012mG1B55rz6LnmSYi06pNwQa2f1st3nSOWMWJ9jdMEbGKP8W
	t1ylOXYMH6ClUHt5c5RxXCICP6uiylB5cJXc4KRAC90uB9Lh3bzoSBDdlN5y5B5Yyf6
	kScVIu971XW7Mu9GP7NQECh/HzAyQRokqf94X5Yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c13e288d-0d7aba69-f5b2-4826-9423-dd47db084cb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca8ff08fef13637c7c163a856b2f16f2c8e288133e5c5599d1bcbfa914d4e0fe
Date: Sun, 21 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661099452

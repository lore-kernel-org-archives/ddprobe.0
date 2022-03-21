Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808AF7A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647843084;
	h=To:Subject:From:Message-Id:Date;
	bh=dPEClUnd2FyxABI/kc107nGyW3K6yR5UWg02XUFaAJg=;
	b=TTrniCArdYTvlx/b9MEERcHwvaKSD/ZQE3qr6NukMSgRirCC83TE1+fMxdkEiIXZ
	aXP+4Kg+pZbXcuSPozbqFQ8yE7nTcZya3dO3J4A0u8J6MREwzFjp9WVZaiAlfUz5sIp
	6Cu8bX/oI2ORe810CYT5pqy0dMrqFdD14xbpUifI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647843084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dPEClUnd2FyxABI/kc107nGyW3K6yR5UWg02XUFaAJg=;
	b=Ygwaea7o+Ftaful0L11MmCLv7ZTVYPgsvJ/FOtZPtPOx46tDoylGTQjZ94D+s8sF
	IWeq4PxPqpB6UZkY9iomsTWknXOJBVfwCUe7dOs+m4Us0KSeN2unXxNUdsgoONbw7hy
	LUcECCABI6mBEMwPvPTGklvnmZVlLsj53qpZoBdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab1a0a02-bc74c78e-90da-4b7f-8f70-d8d4595c190e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11d544b87c064d514d3f4f05c9a7ace0e68f2b5330df9d69e6018cfeb9b09926
Date: Mon, 21 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647843084

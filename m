Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC404352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647524184;
	h=To:Subject:From:Message-Id:Date;
	bh=94hnaynwgEeSsm5ZVMisRa9tIOLUmBIUfgpopvhS1Go=;
	b=ieAGaAQhpPaFkI0xj1IgYgtZ7nHNfpRKnFsqGt/kg6aKvEk95kO4HDNuunDZhiGv
	8kfGjOkEcPqBkXOJN+UcfSEBHn46TXD58PzB3mOpVWOL0xIwrJZDpkxwtTcRURiN2x5
	caRu5C7UY0K6UdOEAcA88zJQAhiQ/GQh5U9lgfZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647524184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=94hnaynwgEeSsm5ZVMisRa9tIOLUmBIUfgpopvhS1Go=;
	b=C8dwWpdWrswE5XNH+Al2ZPUlYa/dOGYWnYsiDwNfkt58nxnwGXzRdPilCfo7Ikrz
	HCajBOabgZKToNgHAwHNGl0sch5U5SdG0qankYlm1F5RPfq/+Wr/WVS9/OH79YahlRx
	Yf31Cncf628/gKpRWASon5CxTwmcIXBEWfDuErn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98180299-04243556-cdf3-4927-ba52-e17ad1ad889c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14054ff9fc7f8b1d74d29a3732eb97d496924d71e915a3855762c8e486e19410
Date: Thu, 17 Mar 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647524184

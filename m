Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB1A23AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656779212;
	h=To:Subject:From:Message-Id:Date;
	bh=XK7HFgtQ1QN6KYJCAdRHkMSMbMD1WNbSSBVKm/GQ4N0=;
	b=aJEYqRv3KM68ZKf3MgSGsKWfxT8Z+YW/liHfR/5NvkZ8G2GmXf5bUcs2aRdoakbt
	CKIY0JVwd3xhBVyk5HJmEGbFsc61ZeSxypIBbA6HaolwLB3+hutvOdaupG5fmZwtDhi
	CWFF+F9dExSQrE1s6zeH4qiKlGAEGyenqfziZyKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656779212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XK7HFgtQ1QN6KYJCAdRHkMSMbMD1WNbSSBVKm/GQ4N0=;
	b=UiWPDXQus4yDDVT0vrDO2P+r7vaMW1RagK1kZTcsoAPEDotNoQMFad5W38yGes4b
	zPItiZ1qRL6JD0FvTSxrlqQQ4DgT4VPmHnujXAXMe/4cLQSI7CaYYVqncT3Elmv0KlV
	iyPXlk/j/E6DugTBo++wt8zjN+P5v7n5+3EStiuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bfbc85ea-e05c66f3-613f-43c9-8b5b-0e53fada02ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b33a42d857e934af8490b53e392140a76fa571d7c1169aac8c8b837a415f14be
Date: Sat, 2 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656779212

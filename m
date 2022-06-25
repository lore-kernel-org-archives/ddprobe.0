Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583F17C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656135412;
	h=To:Subject:From:Message-Id:Date;
	bh=zcxsxGSLXh8NbbaA6Hk9dywURmPY5dfWkEMRg1HJfhc=;
	b=Wlw7ynYU3+rOKpT6H+u0ALXSp9AlKip1kBBaHIl/tKccFmt8KGpwY5DwFL3USraZ
	a5m9PNCKvl+NNkHVguGUIFuFwLW81WsgdjgeO/b4Ln96eeffVaRxIFXzhLsgacyE0MC
	QRNSvRVQXYm1DUh9dXumNNHWH6I3cIzPaQG4vOag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656135412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zcxsxGSLXh8NbbaA6Hk9dywURmPY5dfWkEMRg1HJfhc=;
	b=NTc4urT6dKHsiyliNw2rw9A13/KtAr+mS0xbwvRYlY73pseNQuG23l1xUAI0khae
	qa5G2phM9UwPnuC+KQUGT7BszUxD5U/nqOqme/KuiXiGGORtXeAvJ59ahOGKVSKIR34
	9z6NnulMGSEk9MMo/R9aoCrR0mGy+Zfx6cSsAum8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181995cea31-8eb30d95-00fb-4d4e-9a88-c7ab6626b14a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c638761d874e67201884a4701a5bf8cb445ce691d234c228157e65db9c1333ba
Date: Sat, 25 Jun 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656135412

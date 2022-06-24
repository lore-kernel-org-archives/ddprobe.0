Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C23C7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656093412;
	h=To:Subject:From:Message-Id:Date;
	bh=MZePiCQo6HbPn2i6T+cjFLWHD3aHozdIsCESg0VVvrQ=;
	b=RQuF6e8FNN0AyuCxYmFLl7tpDWC/R2CVk8z0V8DNhbP7r5d347mWRbGVfwt6efAI
	jdjegujJVVm7qzBhVtIBZmx18lsCJ/NtWJv2eKokZtKcxMvnvzAJYNuwkKEnJABUm2b
	NxijOkdmUB+65GZa41laCm4C283BiJru0zr/4DAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656093412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MZePiCQo6HbPn2i6T+cjFLWHD3aHozdIsCESg0VVvrQ=;
	b=G5LmK08Gwkwbe6VilesLMmUHYAvC8c4w4KG9Ue6H16UQivZQ+3OdlbLAHuNr7pqg
	GmFHfwywSrvpAQeMVCEfB0eOkKuOiuJrASdaW89qsvRjTFfdKALgW0O138LbBBL2yeg
	FMdmp2pqszj7dtrdRgESxp6HK2g2RmGdiFJhcnpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196dc0c0f-8d42de14-76cd-455a-8049-959a5ccf31fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92a11b417127c1169a609ea9392084d0fb3a86b1f562d3fbce4e040b939bbe58
Date: Fri, 24 Jun 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656093412

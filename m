Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164BF7EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656491212;
	h=To:Subject:From:Message-Id:Date;
	bh=jW93MfnF5S3UYX1R6tiRDLwgePgS3IY5Co/043UgYl0=;
	b=Wdly1XHc5rvKAWHEF+D83u1GMEbzLxx8HCB0JcCP4wiIOxBRU3FDyktimvEVZiHc
	fjSNfGO+UA/XLrTfBqCS84bjS+5DMcL/Dyk5QhyVdlx3geXPl+fpuCkNwPl82m1vry8
	yyD3I9wqXZTZ+Cs7NiodIV+ADGORWuLTUrbScLAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656491212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jW93MfnF5S3UYX1R6tiRDLwgePgS3IY5Co/043UgYl0=;
	b=OMteRtC5sBpJkOCnN+R7qGaobx+JUd8r5hftdGDgO8nfnOkEupOhvNdVqZ/zi/JD
	wsNifXPiOGdbdIgAhlpcHZqx2PaSid91qgs4hDwzBEXVEk7fdpPUakxa+yRXumVAqID
	A237/8dc+6ZWrAgEUERplXjTLfSPQuWAuqK2eWFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae91fe0c-605fa9f9-acc7-4152-b481-b9f9d0f0c1c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acd1be7d94df3d5bf83dae11e5f5572ca38f7afe9bbe3fc4f5570d5569b8e79f
Date: Wed, 29 Jun 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656491212

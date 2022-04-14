Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137F017C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 12:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649938858;
	h=To:Subject:From:Message-Id:Date;
	bh=o/xyruJpC37sMe6Smd/Bc7CcKlJ05DWBsMgJFeUTPHY=;
	b=d8lp7EhsovO8RSOVm+5y6PPizBVuzVCdXngBqDyRmOztNVQnZzy3r/qr6/MsYAt0
	BX8xbRGO5npeItsxeTnonOR6WVVmb9asJCY7tSx6PzANzlVMwt34Ie9KH0ShRu4luZs
	yyDA69QcOUDkuwysmJf7Z09mT4ouJYXQ5WadBH0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649938858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/xyruJpC37sMe6Smd/Bc7CcKlJ05DWBsMgJFeUTPHY=;
	b=DZ2d7E1flHqQYYdpdn7pCe7LFohLuCJ6szcCtVV1QCXQ5ueyOMIBM+owfmX1Vj2h
	cmEdIsBf95T4tlEHMJSzA6ShETMcQWdBdFy6efSt8OxwyuNge6U94gl4AB3sOIGIgch
	D+3GVyxosMUW2nrhl75MiGigCTAP3mHbMmEPm6Ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028050121-a89ff5ff-9e39-4895-9526-c3932e03247e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c340ba885a31cf33ae2d0e217523eadc38bcfe4ee5b21b45848c56ca2e9abfbb
Date: Thu, 14 Apr 2022 12:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649938858

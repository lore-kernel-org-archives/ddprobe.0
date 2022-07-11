Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB47A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657543012;
	h=To:Subject:From:Message-Id:Date;
	bh=mH5CNesKYKxxoDbmRiZuAjt3j85j0Hqzltjr/5eD3PI=;
	b=aSfdnS1a55YvJb0b6ojWUUfuvBZuX+hdmAaCPHHIEyTGEF3g9g5LKIZb25Hlwr0l
	GIL00vU4V9HynaLvYTKvG/DLpc6b2EG7LHNqmC+Hd0xqIABaQmhs/70tT/aH5UFfIpe
	EgEHepN/Z18PUcNGENqW3Jc9xuBVplL8It67I8+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657543012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mH5CNesKYKxxoDbmRiZuAjt3j85j0Hqzltjr/5eD3PI=;
	b=XyNzC5N94eKamEuR6vbwTZPeTvn5uMnyKCme5abu5bROSYkPunBe11fTy4N0guKm
	GTcGGUtzJJ9hPPykyoXI+GYr/onvmVe9O6dCcOcWqV8soFrzt+omNylLj437Vm1SQwz
	7Rof/LC52dGW4o+aIdOr5/IqaRF8Q8HeQseA6bp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed432fd3-45fe3722-1f87-42dc-9998-7fd545fee9b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bfc472d7b05fe1b70f2462e4c62c0acb46d7d73b69c6c9487dd6edbc112d7c4
Date: Mon, 11 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657543012

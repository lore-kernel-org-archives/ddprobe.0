Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139E03D6D
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 23:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650583258;
	h=To:Subject:From:Message-Id:Date;
	bh=OILl0IpdABwvXYrk10E6aLJAtCXb2dbcwpwoSnVZoUo=;
	b=bL+ZgXYuOPHiGig5oZl8qbmg2MzCxCMMPfsqvJVMAyZXnswvgHFd13lwLb8C8Uat
	NmqUINEpdiWFE4TGdkcrUmu97JARzX8BvDqBiDYP0PFdS7w88EpRutWklsvbIfQAawP
	IK/dYSKvYTMKJer8Wf6O9JosyOLgGMWVrDZLFDnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650583258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OILl0IpdABwvXYrk10E6aLJAtCXb2dbcwpwoSnVZoUo=;
	b=JSTipmveOPZnirT1wQtiS/XEhfJRJti6QBHYlDadF3hExfgYPGhRwlogY12Fvrs/
	pyLr5JnHVVJ03nayFUYjSuHrGe97CU3cePlXQuqWL+ymGkiQaaXTYN9hbjyaM3ib0dr
	zJt10WKWmLBbSp3zpBMvDC7udSWVSdix/v+XvnMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e6dc47e-c101ecf9-d164-4142-86bc-11d2852b7470-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c5645522026648b8a1a763cad3b4b602edd25748f206e3d8357875ac3da1e98
Date: Thu, 21 Apr 2022 23:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650583258

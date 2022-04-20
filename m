Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372A1184A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 12:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650459178;
	h=To:Subject:From:Message-Id:Date;
	bh=K3H02Z81RFpV0t6AoG8BMY4E1VcBIsntRe8ZZqg8heg=;
	b=J97M4LOSKkRwl3SiA/di0emEbFpBx+3vutiBN+Bys8tZXt5fNDV2wFkkbKmMh8M3
	a4yD40fqaRRQ4BpIX3PIbyR+6SVSmMfuD6WpY+hoZkLBeoPHB9KJm864XmR9iqT6cVe
	7Zl2mwq3AdrIsihxPNPXfJAadFPndxWlExKjUjEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650459178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K3H02Z81RFpV0t6AoG8BMY4E1VcBIsntRe8ZZqg8heg=;
	b=BIIAnTNV9mDrWYVAtiNVH4xH+HZRlVkYEWOsTfmDIEeOunZ3PCDkS2oAzTX1tnDT
	S6ujGGMyl57lV3DRebimOB/MnecpiZIuKsnowrJD1F8DLk9Kb/55R2CbPS+BrpXQilD
	Hz5X/76Bl2Gis/k/3U1wKsTRIF+fkfIkva0XceoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804708755a-e8528ec8-69bd-467f-a31d-0fa2c812f127-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bf15c31e6c209027d976f0eb6504d5ed73ca9b95e3261c5dd6f4b0a544ded5c
Date: Wed, 20 Apr 2022 12:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650459178

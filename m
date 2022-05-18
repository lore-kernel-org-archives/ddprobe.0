Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0716729AD
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 23:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652916659;
	h=To:Subject:From:Message-Id:Date;
	bh=mirbmwAMIhm57gzbMTfFwCnIij005h08WE0qgAE28SE=;
	b=h+OiYhD1dxCQr7f9G2eCoUWt09q3jhSL0KsEl0z1HXZLnmKShlN0nk/myynytNyO
	eFxLzJ+kj4nWLxXzkcJZl8vm17ISmgKxbW8ky5AS7t7jny4ktnQwCp+fH34AmA3aXC4
	mZONSPxQVyMFC1hlScY43QG2CDQIIP0px02+tqfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652916659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mirbmwAMIhm57gzbMTfFwCnIij005h08WE0qgAE28SE=;
	b=GkW2CzkQGK8rpSvYAQBi0vlr83G25mY/qiJTIAf1/aZs39y3CRT6C2/WSxHkIC/Q
	i5qrkIkRM2z3kf8eWh3mda5X/+Tb3GxdJqfaIJbDlgaBD856l7O7b8MZBm89VhtOriz
	0szdWJE+fctlNCG5v0933gpd7wn+FRH9yukCO+Nw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d982a449-d8f2177a-6d79-4b4b-bdf3-bf14c2b2d83a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a1df573e3a44fdfd1f8a06aded0d3bc5e7b0625acc4495623b25a6aef7b8acd
Date: Wed, 18 May 2022 23:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652916659

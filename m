Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E064411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657553212;
	h=To:Subject:From:Message-Id:Date;
	bh=4dnLwRMIEqycibt4Dh/J/9Q4CXGl2HR4hcUgszrHTNk=;
	b=OpxJ3RNazygOr6TaIGQ0UFL6UM1v+kiGNnCkBa6r79M0KQwu9yRw3ZkLfq20wpwU
	5CNAbe9yTp/dPUyc7EfYVbAWBGG2EU5uTVhNEHf1eGWsUgmg5A6z69JW5TWmCoxu45G
	XHyACTJKR1ZyJamhMAQnOK1nSDDl3cKWbJZY02Nk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657553212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4dnLwRMIEqycibt4Dh/J/9Q4CXGl2HR4hcUgszrHTNk=;
	b=GLjIRLPEn02YRuZEiL0DvyRw+U021BXSL4/KO9euiRcKB2iUHbUZUQxT/oBzLZsh
	6ssc7F5eDvJbJDotLxpJ5dMaxKzQ3G2x30PEXxaHUk3z62EVrvxz4NWMNWYE8cEdI92
	+ZTsjXc3RpMpYyyACD+VNb866UfjQj+VQirFpm6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181edded3b0-f375f897-866b-4853-bbd0-e96aa4b6383d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e76dfd0897c98a214b508484cf506983173fa201e475ca22c4fe29b0f0d2cebb
Date: Mon, 11 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657553212

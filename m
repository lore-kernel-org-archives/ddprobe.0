Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DB362D
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658739412;
	h=To:Subject:From:Message-Id:Date;
	bh=Hhb3tY74joHdDkBgFbDlPNVmIuv+uKFrxoADZod1Oac=;
	b=ihJeB9Mt9t3fktUuQPYZz9znV50vCBNfGaMqkiF10v+mnNTrrVL62ZDtze7h5vRT
	Ee1SjrrSg8AKTjC+NSZ5eoLpufG2X0UHme7zN3MlHwWdFbQ2BkNQfxiPEzRYluQU1Mh
	31UfIsEg5T63s1b5nXG59M9DfgqKgMOoegrSTITM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658739412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hhb3tY74joHdDkBgFbDlPNVmIuv+uKFrxoADZod1Oac=;
	b=GrWRcwA2NvNRu8Dfx1kcXRZJ+Ftb7aBb1NEZTgEhh4HO2UQ1d/xcN3qrrM7rQWTd
	hSDEvPMdz0Zd0aCwtLkNOtBwzJIq9mM7J4oDFFIv/FD2YPtcsiE1T/uyAkp00tA9fid
	d7cz3h/p+MkJaYkksCnRTXTfKPbIB3SobNnLPt7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823492cd98-b3ca45f0-805d-4c01-90ab-7772e6830333-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ecee17f772d63e0e7cc28b0669e6504d8c2d898a2e1ba21fa3d4daf0a222a07
Date: Mon, 25 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658739412

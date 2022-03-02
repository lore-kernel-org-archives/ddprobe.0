Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DFF33D1
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646227284;
	h=To:Subject:From:Message-Id:Date;
	bh=d1sQFfaFgIq1jazaQX2SU/aT/het1cKq+8Cjfexrm2c=;
	b=ID0h7NKozpNJlL5ER/vZnpNhv6TvlFAvMKNXwCFI2kHy7iqy9ghlrOJYhRXJlSVC
	NnqApt66zzIeO0y3S/6szpQAhduanMxp/S/LQw59/1nqjoVq3Gfg2e/FUJj/Ik7Cscl
	PTfjrF9v//i2Dxl0tkHpj/C0hhim+lSfY34taM2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646227284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d1sQFfaFgIq1jazaQX2SU/aT/het1cKq+8Cjfexrm2c=;
	b=KVpSZQ08/ccsxttxlKQdtzup0KkTYzZV8IFGtqQaB2QAWcAIKdMNb3OAU1reNjq2
	vxFKV4WKDwGwHO6GAw6FIBnR5Rnd+SkunjzHFgkm0ZskoKzPyzVII8aaEQprPf935Tm
	0XnR+BVe57RRruX0rbT0e4++WRnGHMXw3jIywUIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4acae2fb-213472c5-1167-4a9d-8317-467853b4e045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf7fe70a196d55f87f80355db5dec8de62dee97fd7a0605eecbcb4685a52440b
Date: Wed, 2 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646227284

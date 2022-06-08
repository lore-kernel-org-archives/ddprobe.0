Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39B77B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 22:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654728119;
	h=To:Subject:From:Message-Id:Date;
	bh=ZSqA8Ic6KUhMvZtDopGd8CVDbZSZzPtj6xYa4oUlKR8=;
	b=XY47mTqnIkJwDNreDuXZIP4QEu2tQ1w+VEOkeXVPU97FzrGX2rz7CI17eh+vByrE
	tiAAXJcAIiDjB0d827J6yG3nWsJymFzLvNwn99C9rlHdvMLMDf7zX8/Zq0/X2tOAZch
	3hsJ7hgIzyUc5Ckejfm5sQn9EEIB0/FqeSQ4ivFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654728119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZSqA8Ic6KUhMvZtDopGd8CVDbZSZzPtj6xYa4oUlKR8=;
	b=V1PdUulL/Ea1qVCBdXmA4TbydxlRccnEAYBg5603vs+wRswKl4/Cr1KcuikxRiUQ
	ms0mJSm0FDsWP6xM0liWKrSy02Jn7vymz0Fy4nI+kXuIU3Z9nF1W9NcJll3vPwyFx36
	1GaEyH1kt/wgHJY6zk+RFraEhCW5xp1Q1RkFxuns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181457b53c4-48732fff-8ae3-4204-8526-6c60a8716967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d83323c1d7e3315ea557c63c721a0aba9295215243945a663dc04815693b7dc
Date: Wed, 8 Jun 2022 22:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654728119

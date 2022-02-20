Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E85A09
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 08:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645345885;
	h=To:Subject:From:Message-Id:Date;
	bh=HhNBFiuUDFuczXPalitvaFEMVffovCL1h9YGtLVglbM=;
	b=kjTjWVsqVm4iJKlKBniEIa26Yn2Rrf3h/EZFeOL8vitBOI1qLCAZZ5leXg8MXErG
	MB8oRfdqFO4l9j7GC0UqQ/QHYA98eYeADoaUDNlQ+dctBDRQnfxB9RijJgFat52eLKg
	Ie4LVOOVDucd5otDktErbxNMPlpMhFZYGK+5h48I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645345885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HhNBFiuUDFuczXPalitvaFEMVffovCL1h9YGtLVglbM=;
	b=XwSJOG38KebFNBnNnRIUFKC6bWnHYuEVLr86Eil478Z3J5Ptp4sfJ/WTjdYp58uG
	fQTZyVjzKj6BCW3tfiZfa4cRQOE0M2P4L1DdHlu7L7RwIMONG8Uqq+vphPxL/jZzUT+
	gZO8izUx5zMhpseJ/u0sXLFdbr7f/r0RHO4giUyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1641ca74-fdea4b1f-b38d-4647-a705-c8d6fcd88751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b399ce7977cba46763445a1f1fcdc1db68fe542fa6b2ba99073bcf88bc1214f4
Date: Sun, 20 Feb 2022 08:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645345884

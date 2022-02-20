Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BB557F2
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645330885;
	h=To:Subject:From:Message-Id:Date;
	bh=2vBpl1CpZzSBt/CgR1AXC3J4p+pO/JoE1fmdw5A7VP0=;
	b=Y2Yd5jpYuqMeJ3Za4bAHkJHsTGJDMK3Dqv5euIgN+LzJ3XPyHwwSqTi0yrOozBux
	BzOMmP9EBiAFwvoiqT+OPhkdDeT6VO5YGdsvdHoWZNO8TUekGDut1E8+ETu40wbjguP
	1M/1vNlmwU4UWCwsnp0F4eF1zpLYSVBbO0mWZ2G8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645330885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2vBpl1CpZzSBt/CgR1AXC3J4p+pO/JoE1fmdw5A7VP0=;
	b=WUrGd3OfV+QVmuOKob1qRGJFgYI+tr0ycdwR2Rfbi+aihi9JZmAHqEA+3ZCNaVys
	Ly3jciE8beOVg2AfKGJXV6rvPi2sfrpbeY3+XDqI4t7epTdB0O77HgTX/nsoLKlXohU
	+HCBWvGyo3mqcsjs+RvUGdgJxvLcjYK2d/N2unXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f155ce899-b2cf028c-937b-41ce-801e-d41fc892587e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7397c9eebe0b23e5932c2db632d0e55c9aaf9ce31a0b7fcba8d2f0d3a808d1bd
Date: Sun, 20 Feb 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645330884

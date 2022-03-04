Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9D17C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646422585;
	h=To:Subject:From:Message-Id:Date;
	bh=7tz2OYex8ULKUIo9dxHaK0VD9npZJpkbNaBuFoHg+vo=;
	b=C5wmBHg7aDHa0Q6d/rAvGC1I620GgjI/g83x7HczHi1xtKMYQT8V33/o2N/zRMo7
	+GP7FZ81sJhk5/3YM+8H8j9yl+sUjKsPMi9HuaDSlOkAXisU/AOhrkkzayjLj9LDcOD
	lp7HAisqfcWUckqAJIaqqDavjoSU3krscHUa5iWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646422585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7tz2OYex8ULKUIo9dxHaK0VD9npZJpkbNaBuFoHg+vo=;
	b=bDVU7rSBT+sn2BhWZYFS39YTT47KO7eJmHz3lzpxqflMx2GkIXH24U1bAvQ7WL8v
	mPi3d33em+BAX5wjjQEeP98Buf/tzBm/c/R7T5vaZG3zP33qtCLXA/fW9lpLMbhOBFH
	5lhpV8le2ok1u66IHg+onnQiRms3rpdftzISg/j8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f566eedf0-8140b692-5ded-4568-9efa-5645a156cb68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df41029b4e79e9d020ba7d4a14eefc138c367ba2409887759bedba056c2ba141
Date: Fri, 4 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646422584

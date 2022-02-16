Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5608A1FB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644982284;
	h=To:Subject:From:Message-Id:Date;
	bh=DWwy+N0VBmxrjXIW6jPvdSS2O3+TVSQ8NotXbDUM/pw=;
	b=afCT8chhce1uc7jcgLqKW7Sxsk0oJ4OTcLsKpWn4xvS+P9Y+yBYbcgJfCTG6z74C
	bkPfb+GdykjzMEBvIkCQ35SGfFamw30N1FOxe+D0MImXmOtPQbMrus4+bTvHdHThLLY
	kT1Fg3EBA9Uvb8nTHDXCSV7LDrOgJxM/YpH9NoTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644982284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DWwy+N0VBmxrjXIW6jPvdSS2O3+TVSQ8NotXbDUM/pw=;
	b=XBqL/idODiLxXXcwdA5SxvBGT1U8Zj1PEgTcN6NczuBSU6ymEquXfN5KaZdEgUah
	W8oPoSuiji7Zy1tclPAEO1DKvCfHR5tR1l/3lkh3Fh5m/i1vy/WUhG9nmDp2xzhD0sJ
	IjWbGCVuKhDIyuQ2vA97ZcloNrA1QyNEKVVX8ci8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0095b1c0-04606faa-cf9c-49bc-aa3a-d7fd4efee5d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f783ce53805fb72cdad24d467931c40e713495275ea44a7f12088852034e819
Date: Wed, 16 Feb 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644982284

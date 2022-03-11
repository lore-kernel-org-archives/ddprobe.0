Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0357E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646973385;
	h=To:Subject:From:Message-Id:Date;
	bh=lRGDClcR3cxPy3mp3mGNjsfPwN9+fRS1tzvTvWn4/es=;
	b=VZZ5OBnF84NCNmBB3qeQjAZYp/aVjXyBlcXXEebDBpMKxxvyPC1lmCaqwr/rPH4n
	Z3I/EZnFqTgvxjdT0wuqkk7dhrtQKFBAbYewfWIr1yymvRvAFs/dN7Al9jb60LVrE+5
	d94qRuHKi1j3/9IdqTBm4SzIPKSig3dRn7/5xnkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646973385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRGDClcR3cxPy3mp3mGNjsfPwN9+fRS1tzvTvWn4/es=;
	b=U6UBu9A+OFwvanYCb98m9c+H7aojBv+UEIFxwmQvTYBP5Rya2oBPDTK2Yrz2NSW4
	0f2B3rk9nEgPM7dw5p3jGjaV01jYdqe9/vPdRM7DDvmTDS0ipoUQ8FoJPqeYqITCX9O
	HclhO48r7bhB6hGwrX3UiIaT/BlT2YWSL7awZ/O4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77437841-f4d39d3b-7839-4c07-8311-eac93367dcdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa65c0dfbf95b756ffb4a934868b3d7243c9188e5f64260d6fb72d132d8636f7
Date: Fri, 11 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646973384

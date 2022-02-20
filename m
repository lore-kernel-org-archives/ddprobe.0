Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431025A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 09:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645350385;
	h=To:Subject:From:Message-Id:Date;
	bh=7sna8v6GnkYdP8bxmOM8eaKf6PF4VReSqCOZaPw9+lc=;
	b=C8rKurP37DQ1C37275NU1Ag7aHvpDkOwiG3N6gJbWTZKpUEeHoxWW6AKQvXbIF1V
	7tc4V0K074GDgu5PbIGNMUUGrk/z8X/Us0BLPEGGP4oDDYO55A6wtl2WF04mdznQNjz
	Tfucd/NjimarlZJ7R/BDMquFNumg+fYrckkZrn+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645350385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7sna8v6GnkYdP8bxmOM8eaKf6PF4VReSqCOZaPw9+lc=;
	b=dIF0FI14FSDBkVm87m1JLpSw6HXJsuHO035Uuos5ajMnWyTspUzF7WGIXwDEgZ84
	McgaG004Wp0Vc0gn7v+APpPI1z0ru1IkkYlVJ0jhHu64L25fSY6M4dJcoEZsfQBsYXR
	hVGabqFsL6QOUeGUEngv1rTCvS5bvjuOYGRKh5sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1686748f-ddfe23da-b43a-4c6e-b333-854333320361-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ffa1940681182e79eb5575ac1f35c4127605b1727d353f22043f21530505411
Date: Sun, 20 Feb 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645350384

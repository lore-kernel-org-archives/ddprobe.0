Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3383E1840
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650501238;
	h=To:Subject:From:Message-Id:Date;
	bh=kU5p56SltEcsOmKfus+JpwTNH3XVp/EXxTVw4k+1WKs=;
	b=R2fQoqsx/SB3dBPTwMG123xijf5EYyxPJV4mDLRErmtrU4q8XxyNNeyIOLcFvcfn
	5JtBm20nacjesjLpG+H7trXedNzAMXJuNcWy/xpVKbm+O3mJW9Qt31k82fANOORLhgJ
	jTJgSCRgoviUq0y95gAPEi6gf9jQuyGV/X9UlAW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650501238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kU5p56SltEcsOmKfus+JpwTNH3XVp/EXxTVw4k+1WKs=;
	b=Tm0E/kTzAu8pJI8NBoCneyqB1HIHM8gbJxBy+qzmSzp+kPC60gSJ+Rh0VJ+Hz2lK
	dptS3JfzHDdKtrkNHtlRzn2r4JBpnLQuqWWCTM3PpYZtDnwHnNS7JOn8+yACwczy4UK
	X47mLxD+1rEjsaoy9upnD0EZf8sc3fhupgKKvtYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180498a3e06-191c6bc7-5e15-4c46-b21e-ce0bcafad6d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a55e88af2933cac1236974ea0a20059ed6dd410d588ade3101f829de4d3625c0
Date: Thu, 21 Apr 2022 00:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650501238

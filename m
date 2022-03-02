Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A086633D1
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646227885;
	h=To:Subject:From:Message-Id:Date;
	bh=g5Zp35pfZE1BIgXsn1PpkFtf7r4HY8a2IEe1q/5K//k=;
	b=gv3s6tBSc3q4TXcgLQv88Uu9JZfjSBxEnCHHJ63obdgwX0sMIsBv0DN72R1g8anY
	Sgyn+Sprf5Xnj/tdF47WlCXrzkql3y0huVeLBHMXD5sawnVceKFSbaXrDxxGq9NDWrT
	MwUAhkO1td9eZngDR8hCcxx/Q80QH9ymvLQmR+ZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646227885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g5Zp35pfZE1BIgXsn1PpkFtf7r4HY8a2IEe1q/5K//k=;
	b=PtZAeegEDVXFoffaj109e1btlYnBTMnvaWH7uLSgJyqaywHIIlMEbeGWTMs/1blK
	l0d5LnUOz9/zdlBGs+Q9h7U13udk4cf5YZx6+LS+CdfSXjAu23ub9O89q13BoOFNHaZ
	/AB5R2ydU6lJus6gUQLVhvMwDmvqGmp8tARONtYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ad40b02-5c2b1f0b-48b8-4d1e-b024-fec1ac7215d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db56c0d6fa9ab72f45421df563062fccdac9f159d0e9d374114515ead3e04e49
Date: Wed, 2 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646227884

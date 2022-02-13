Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B3A7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 18:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644778256;
	h=To:Subject:From:Message-Id:Date;
	bh=+xRPUhRAJrZWVNzkg6o5JKHDrMW1SX9IYm2NM/G/pSs=;
	b=EpBa63bZI0LOA+vUPxeCOGPvbab5IqdAYruaQgxm6JlHAsPgyJk1ZBEB25OnNGSE
	X7Ji+FG4DpaBg2WwIDV4tOwlgcRL92sBuu9RTIRmp4H8kve8Ab/Y6uPA14OkG+Jd1Xa
	OZHDWVefTd2HBSyuHl8J2TyS6HHK63p0ti3E3eTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644778256;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+xRPUhRAJrZWVNzkg6o5JKHDrMW1SX9IYm2NM/G/pSs=;
	b=cISslv26gimFRUQ3a2Y7WzJgkFDcGur3Z6qbxDexB+ip1/KNIVP8+XeH5NTOVydT
	UQq+ipW2hxG2awBpioLhaGCxbikBYSCD0RJN3Zq7CXPv9mtPvM15VshuuhoSqXZvVuY
	vL5EcVtDOl1vaHSDBlSFzcJt2MTJ/7RNj1p4nuIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef46c767e-520493fa-0bef-48c8-bb94-6406b20a5d08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a25336b7dc6642e75df27fbc93caf7552d96945e2cf96757e795237a0f3c2ac
Date: Sun, 13 Feb 2022 18:50:56 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644778255

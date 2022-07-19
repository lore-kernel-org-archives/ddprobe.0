Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080D03C14
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658245012;
	h=To:Subject:From:Message-Id:Date;
	bh=FLCjqQ2XZ8CAAuUXDsF55UE6cE/j2ucjRS7QcCI1lRQ=;
	b=hiLRjtvkOV1UvVI5qsOWgNuWyIEhdxNRo+rl3CiSujFMXjqVTMxu5R6qPFU4LH/S
	SKkRjelHBgmROurDmzuUP2TSaAkTvUsqxQcWXkWKSRwnQmU605s34pIUwM0yVPNLwwl
	yKfOQSLXwTje5jQ6TpJPAGnVNIEwVAtN58DWpaDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658245012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FLCjqQ2XZ8CAAuUXDsF55UE6cE/j2ucjRS7QcCI1lRQ=;
	b=LJxpGxetIQk70O6r/b3vdOsdeNxNe3snXjmfXNApFKrvKdSUZpdDEEQQKaP3TIZT
	Iak9YluJ2WM4RQPMkt+8bmqL3jYZmMH7KOIzGqMMFb+Jmj7SBqI133hztRR88ZgnEHj
	YfDOMhfWVEfl2aWgUYivNhsIvBGcebt5LC0AM4+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182171adb43-d7fac836-59c2-4af4-8131-446087a5beff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ba3ad9e76bbf71019c449a60f5390ba801ac2977e93caf232633f3db5e5d7ac
Date: Tue, 19 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658245012

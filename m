Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97AB23D2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 12:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653739739;
	h=To:Subject:From:Message-Id:Date;
	bh=/EMdMmPAgbnbYnLAW0FMl7HqKgktT/N5pGsG1X+NarA=;
	b=YdYTwLhH3ce83bQv+ro/BdubvQWm+faE5+adsmCXXL1Ghh9vT82P2pKKf/0+8Zqe
	fIM1YpBNoH7dwz9pIBJHrPjcrQlZ+X8D4VnlOk3TyEDpk0TLfSFx8+kzo+B0nUBvIi0
	2FmeR5oXtMVWeS2SjAS1yKRO8LlihMHA1G7PWoiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653739739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/EMdMmPAgbnbYnLAW0FMl7HqKgktT/N5pGsG1X+NarA=;
	b=O8CQ69bfHzIyjzaNj7SbtCcle4O8pbP5mI+vUgBy29JQopqMmU/+wG6tlkORYYr7
	TGJCIKXQyExcrSB5QnJfrZemQWa7CD6f1GQ0YvhhXra/wpTfiCCWNyKkuQg0TCpKse6
	S3IpHuUNw/PbvcikpHDImzimrvmxVTJ3DI9GY4UM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a91d85c-94b19e04-0020-44ef-b098-3dcd7a1eb73c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85535bcd84a663511b6e76ba09703bc6fe30e51b1b8cb950772061ef36de2e13
Date: Sat, 28 May 2022 12:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653739739

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59966559D
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646056585;
	h=To:Subject:From:Message-Id:Date;
	bh=Mj/YDVIIUnrMNZFgDtVv4C+gi4/epA8vjS8bQIclBHg=;
	b=GRaeOcjqWj87kI/TsEiiK3AQOCBekHSkoqjP2rcH4GSf/2AiiE+DqyHV/iJ7mPfD
	L7QEqzejfYMIxCOkF+NovKM6o/CBir3OBnT1vBpGupgsxWdm3ZgW3I2IRR3vZ69qxpH
	Af+1bM9nxQnqJ5BJk8JiMXWCGK98EGiRMWAZk0WE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646056585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mj/YDVIIUnrMNZFgDtVv4C+gi4/epA8vjS8bQIclBHg=;
	b=DrF3uStnHUDzisM4BDJaNVvL2URY/n5CY9Yg+rR8hp21qTMMVEUCbv8r5QzZuBrZ
	geyEmMG13AoBy8Mk5KEITmiSW+ME78pTydseA9AJkASubrutxM1yfudw6NVkjNgcPGc
	TRAnXDC/XQpRDd2s0THp0nDgzLgzgowR2Y2EKCQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f409e3653-45370766-eca0-4f04-9eef-0efe025c0bc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a286aa30ae52cc02613a5d1ace4657525ef06bf72fc24efb7330322239c20bf6
Date: Mon, 28 Feb 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646056584

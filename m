Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C38D4C75
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645999284;
	h=To:Subject:From:Message-Id:Date;
	bh=veerwoZnTNdkPEJuZ7aDA+3iLPZf94OgWA+SqWY9/YY=;
	b=fnY/q+ah0zIocenC/yww1Rprm1NqLmoHbVzXEE0hp/rMBrt475Ohhk1fIqWS4AQC
	bpZrPqN/h8Lo+bT+UbOgbzwymVM/qrt4IXq7rmXasEI52dn7jTXE3buGRuuPnGbFCzB
	H9fOUoy6hxvd4K7aJNCwUP38DFFZP5KEoQ519AXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645999284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=veerwoZnTNdkPEJuZ7aDA+3iLPZf94OgWA+SqWY9/YY=;
	b=CrjssgZT59A9eIEpOM+alLlggC+zVjnO2z4qMYjV3m1zwmw3gcCY35Yj9wf641qK
	1KIQNDOomH2UzQ4asvppnEdyNUGWQukzK9yC3Sl96qHWl6kYYkIwoPIOkfsW/XE0G3t
	U0/6WNJhTgQRyqi7aBlFp3IgEcM/gfbsh9bhGA0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d33e229-7f39f6af-4f09-4050-900c-1c6e88a67ff8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0175fc4495090492c3f56b9c89432929a0a446fe7282a7209e124d3a5e2ace50
Date: Sun, 27 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645999284

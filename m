Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D525583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645305985;
	h=To:Subject:From:Message-Id:Date;
	bh=PU/PBG8PvjpG88ayIlR3XYHNowkTJpB1ZWGE7Vlmh14=;
	b=HP4W0FJFM0j8iaeo77GWQ0iMZ89t0sOZpff/QBqpmfoQh/XIFz2s9jgQLXhp85jF
	sVxdHbMyalkEuxcr8beopFj7VMwaCjNO2/PF7DxvtA/x+DuiGJiG9jQyfSxpCMDmAnJ
	evtxaRlGfT+9NnmvY0pzM1YVuZmmwn6AYK9vzTKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645305985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PU/PBG8PvjpG88ayIlR3XYHNowkTJpB1ZWGE7Vlmh14=;
	b=IsyRBB0XIW7Ecn060tYjGBrxthppso9JNxlvBW3orM2uy5ncyW92H+hSn/8k9fE1
	pcbmcm4+lpee8B/FjXbq69242otITwSLi8xPq1EWfqVVt4zkm+obdDNWy5P0VCluzkx
	EVO4n/SlPygtl59x8rT0Yx1GEgBVYU2UplJaWL1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13e0f714-e5b8c876-2fc5-4cec-9483-4aeaa20f851e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2d871d1dad7b454c3ab16ebb76dc60dfeb7106615abe5e6621f92814711f486
Date: Sat, 19 Feb 2022 21:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645305984

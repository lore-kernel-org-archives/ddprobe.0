Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED525CC2
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645366585;
	h=To:Subject:From:Message-Id:Date;
	bh=2XPxbyqTXJZ+dBsyKxA/cHm3SbA+46qgcdmES3gGaJI=;
	b=UIF0EOfyDQjRmoqVmPvL/xccGJVwFwaipv1289nRGQAzSxi1l4eAYgmNi7T1b7aJ
	L8b0uSrEgs71qNELKx/StgNf4Ppjav3YUg7FuVE2crTru7e/F8O4kPOfrzCWeNtg3Kh
	CsF1YoEI2dEs2VgeIye21oOXgDxjI9lrsUhN9MWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645366585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2XPxbyqTXJZ+dBsyKxA/cHm3SbA+46qgcdmES3gGaJI=;
	b=UJKUYgmpOFcMDu+xam9FhYRquD0zib8Kre86wSA3PN9LcP2lAaX9zokhm/7rbKF4
	f2qmyd+tCXB/SslCOy9JlPYjrdEdH5atPQ2HAbYjtD6lAXjMc/FOzvINsF/u4hz32Pb
	vCIeB7NSwde6ukMskf20Y/sdQ2Qpfqwb/u7TjEmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f177da5e4-72d91e5b-e010-439a-9b5a-7179699309d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bad60139686bdf58ec8ba3a210103943f640c5239e7d2798b6911102ce79ce04
Date: Sun, 20 Feb 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645366584

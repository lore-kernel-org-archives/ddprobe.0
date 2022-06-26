Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4597A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656281812;
	h=To:Subject:From:Message-Id:Date;
	bh=QexI09NVBJS0yOscVugX7QsjtTvqX4hsDv5zDIpoiHo=;
	b=FUN/tkiMISxscFwCWyQDuZhQ5xK9r67gT2pfGIYemu89k49MyxPXxCGsK1vlUBcf
	e/7VYGd1bMf3teJaTl9xC71/t/+cUsc6k+yKu1JZPx4ijmJIWWPxuhoOHM86aA+daHk
	ynP/dkrhAIdgB5fDPGTXXCAsJfpJcx9dtb/+RiYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656281812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QexI09NVBJS0yOscVugX7QsjtTvqX4hsDv5zDIpoiHo=;
	b=NWZpTNxXRRfFC8f4FSs1mFRjUFZBSLSA1t0yfLRxJb2wlVMZ7dBrxeUKeqRbki9r
	Jlyzj5+aEVAL1HF1+OlJfvmZDzIs2OZl6ckHIk7o0aSbllIMwKD9ljXOrGAuX2Dax0L
	HKUzYDCTDCoYNwcimnjIWPZo5eZQIngiqt5hevK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a216cd6d-40b9dce4-c1ae-48d1-af8b-b56582f135a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97a5dddb11c010c8ce1e52fa228abf0042f8141c09602ef148fe9cb3525ac862
Date: Sun, 26 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656281812

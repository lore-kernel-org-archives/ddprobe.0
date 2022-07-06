Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97E210D
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657090612;
	h=To:Subject:From:Message-Id:Date;
	bh=82SnHLxyQMiU81PXLOilE2GxpKIdQQ+DbSMAZZjs1fI=;
	b=JMb1Mfl+Wf9zyVKUxXdCBaCUaTJ21m+VPxzvyA+6kQbFfuHzIjIsVeuwc9/wsfLm
	bXZ/BwUghXNCDc4ShCL2smG80wkSIMlSTg3aAIBBG8VMzxaHpgX4nUMtIBoinF0H1CT
	mRrK1JJ3jR8tgUOUtQZPHXQV0vaF3Ab8a2fhHEzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657090612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=82SnHLxyQMiU81PXLOilE2GxpKIdQQ+DbSMAZZjs1fI=;
	b=A6lTaVbu8WrTMDcb9ewueqdTuZBiRacud6WifQAxgh3fKlveFUklvGulwgbJlbPm
	mZNgPPCSv2Zhmi6ld37tOaLBaT+wgyfOw7o2kQJIWfbtWDCKA3yDEec+J9FFu5YbVkN
	hNDrqcBIahSjuvZWrGwRBHtrOjJjmqN/10/i+ppY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d24c1c44-a4b99359-8f27-453b-b8e4-a67aacf1194c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 440e9084b276b0df2fa0fed78571646217fc281dfee37ecef6040477ee772c96
Date: Wed, 6 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657090612

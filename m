Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA157B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651055219;
	h=To:Subject:From:Message-Id:Date;
	bh=gksjCO0GeKh+Nazzk5fWMeA9WRlgrL+1O2EwUxKkP74=;
	b=K40yqsdFd9JyPWX2w/bAb6Z4gEuYkGnxrx4kwX8KY1rZ2k3/8/26zmUhYb6NDc4f
	/lhnpger/AsiN1kFGauc16eIPI2JxQZz5+K7rELPm8k0/DFP8obNHanUIQD4xAHaB00
	rBV7lIidk8TKZLzYru883qtMzZ4C1R3YpQUWJxtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651055219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gksjCO0GeKh+Nazzk5fWMeA9WRlgrL+1O2EwUxKkP74=;
	b=ZVzqJNP/g3SVvUeSBuxPskM7QbGhRisoUJBv/fT6UzON5jgJeKLzvBI1mnyq2RFp
	rRwm1r06jPt4+W58GBpiVimoKsaL4yYmR1BqRvTxjHE6EpJ8nby6umNWjNOBiysStgC
	+eDjCmnOWDMZ3cdmqf5oqHRC8NCEBxVh2/HoMWFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a8f4e50-1b035a84-88a3-4c9a-8d12-f1886977b47d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62180b22c4576912d52afe69c52d808ca1c41700696e7adc4a7501c177e5d794
Date: Wed, 27 Apr 2022 10:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651055218

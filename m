Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BD9111F
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661338852;
	h=To:Subject:From:Message-Id:Date;
	bh=ufoMCA/S7EVD5Jb30gAlKAr1wPk6o90o/p6V7Cl/+jo=;
	b=L67GqouBPusY3NWZxbsccqEm6vjSlQXiok66+BXb8f0mSUV+zhOm1OtUsJRS4ZOy
	dbY6w0Lfs9Qi/fRHQllCynal1T0Qojye+uH7BvYWc2xInC03Ro6LDKsgKuY8hCmxvTq
	2RRs1GosJacBjJn3wses7UMrlK18XuHInbGS8EHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661338852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ufoMCA/S7EVD5Jb30gAlKAr1wPk6o90o/p6V7Cl/+jo=;
	b=Pmr+aQ3u85cLoqKeJetAlP84cDCp8AC4pzjN2KAulhUkUgeyPgwEeHC6nCfvqJNe
	VRF6mQdBWV9YrjZ6Nb8E+Qo1CbPMPnYs6rNGapPh6UgCZV+AbhIofMHMH/gRKHyq4QI
	sQMGQVlKAEh09mdtNvLjNT1a3pUfvlp4LBzI7jX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf831d5b-dfed9798-3184-4ef2-bd64-20cbd1471591-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e5e3d5edf7dde691635803104a95616f8e23d82de05a4fde806b5ddfb96a686
Date: Wed, 24 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661338852

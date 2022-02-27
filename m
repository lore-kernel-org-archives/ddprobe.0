Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD732F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645973184;
	h=To:Subject:From:Message-Id:Date;
	bh=tDWF4/dx2IBi1sb0WfiSYGFab7x1UUBKOmutmiD6caw=;
	b=c8MiCUD4k9PZSkbWeQHDzT37kmiXmGrVrXaP2yFngqoA13uKeSeHXZmg7CAXBqMq
	SoA1OM6GkHd/zTP4Nm3bPi/1eWwk69wtxS7enbTAWYETwOHj3q7+SmXRyFq01e3FVgW
	Fk3nwhu4XfMHrPsTT38fH0lg75eTVe/CKefbK9U0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645973184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tDWF4/dx2IBi1sb0WfiSYGFab7x1UUBKOmutmiD6caw=;
	b=X6qy1Cn85TXvxDCiXGslNIhnujdYexZLoq9Og15up9Vp3MWQsRMgv8gBh64w92hg
	pEiHBwKdaU7ftvYwg898QyVYA16uGzTl5Tl3yPsu472KCrW61eaO1Vjmk3hEH1/Uzxs
	nt7Jq58QKjYiCzOzMYvev1KySaV3gLXxYvhWX1g4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ba5a10c-6a6e2725-04a1-4325-9816-63f2fea616fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ea2424b598ede369c88dba8fdb3e3452383151e3c1d78d2bab06f6e9b25ea61
Date: Sun, 27 Feb 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645973184

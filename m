Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEA11FC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 03:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654485479;
	h=To:Subject:From:Message-Id:Date;
	bh=pK/CQDyO1kVPt845wv3yejXCTMOL3pzvvvyfpMz4LzY=;
	b=fff+0QV1vs7cU1aT7nVVotQxaL6VsJ9f++KOUqI9lvptK4wFo10uz1bhNS4g1qef
	+/6XG4sV5fNVPJJLRDY2de20o47K96336l1HVM7XufSYPaMjb3Dttsh4A4yDkoQUwGC
	rV/EHGJIptk9/Q1yET0EvcFYdVtGUMp5M3dxLxu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654485479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pK/CQDyO1kVPt845wv3yejXCTMOL3pzvvvyfpMz4LzY=;
	b=RK87EcEC+eJmrN1WJDs+cmZdEwkXogJme1JBZij0onBgZYb7GqSAMLT2vo45oRTx
	qHS2vucmE153XE3zR2PubhwWkVK9y1FF2TDem4uWOeAEPWxLWp/aHokJuAe6rd5JFSv
	FqNSBXfM0wsHFoKu0YUcm8Yf6vS+iQmnPTmYrL+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813704efa4-94106c10-9868-4453-96f2-26af99fad9c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01000c5a09a90ea4b004f2b1a923867016d5f8b7d968ded822d052d2cb74a4a5
Date: Mon, 6 Jun 2022 03:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654485479

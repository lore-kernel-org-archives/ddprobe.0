Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DFF33C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660164052;
	h=To:Subject:From:Message-Id:Date;
	bh=YloUIsFkz5RJYe3O7/WSPmAqx2AKDQVgZENGvgVkiFA=;
	b=HOhu29+j2MtpXVVV/y2Z5Px7vxnjtzt54smLVNBVTd0J1nV8IUBkdANukvclpIVB
	XnnKTLUrd9vgT34V2IPvmLuwb5+59GBC63ctdhQBSgyrk2Sdj1Xt1NLoKJ0XZmS8Uzc
	G/2MvV7Qek8EvEub8ICYuy2rFn0eIt+Y2ea3v8OQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660164052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YloUIsFkz5RJYe3O7/WSPmAqx2AKDQVgZENGvgVkiFA=;
	b=hmIH1Wv9U3ugVdCR6hs/TSkGf1A3tqFmhXR+mSuY8dFNx3gLcX3TTJ/XfSi1VAV+
	kL6MqWfgDTV/3G8PFzYD2wvwOfVNaRkzzb00kTMvEnD4lVgMQ6jN2PEJju9tNyJJ9uV
	Wfws9dLJjtgqO0POOi6jRWBA0qizDi8O2E23yvvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182897d1632-fa867bf1-a8c2-4904-9262-7209ac05f38e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04889649f07927163de1396ea139970ce782a14d736e26a220fbb24f18756589
Date: Wed, 10 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660164052

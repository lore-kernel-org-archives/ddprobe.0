Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF1A1874
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 21:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652822579;
	h=To:Subject:From:Message-Id:Date;
	bh=/JD5A63CGr/X1mZf1Yud7w9kuBWLv08H+q/uW0eckOU=;
	b=ZFd+G3j3A7NgOiksucZm5G2ZbTu9qAlORrbzZWp3E2GPwHJ8G4o72b7BVCJpCmxy
	wMI6ZLE68y7Xvm2XsoTAiL0RaWUfkAcR0c06b5kZDVyUlbL22P0VRWvkWBEPu6jrb3b
	guidXyWHOL2B3/3n0JhNYdd5/1aMfK014uBYHnnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652822579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/JD5A63CGr/X1mZf1Yud7w9kuBWLv08H+q/uW0eckOU=;
	b=OyCA8sEoJmIGCI659/4J+zL5q7ydx1KihtXbvH9pgibBm4i0Ps+2JL8zgpfMS/GP
	za2Vm/fE+s9GEu1pHOVf2rEaRybVcsB5u9iAxxKOeyTuTvyMfIEaXMfwR3Nq/y2nqj1
	IuUOWKbOyf2sBipGv931/0SQJx1CkEKbx+qXxmJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3e71868-bda44eac-7223-4175-aeb5-7243c6d4de4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f532a9f7991de34a6eedc7ae68a573313416c6103923fbf66501b8c5cef0c082
Date: Tue, 17 May 2022 21:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652822579

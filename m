Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809C1ED8
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658928053;
	h=To:Subject:From:Message-Id:Date;
	bh=AnjVYfobKSMBEtgx586Q9EgKUR5c6LD4xMP6FVcJtTc=;
	b=N5sp6ZO2vBugcZIos+J0AVU/rhOE52PoMQ5CJyybxNT/8FJ+iysPW+BGby1SszGr
	vvveFcWUaZddzU+7yFUbyvjNnWW5Mn6np+xqFfXsU3e2L1+jhBG35VrPKzfRlbWZWBQ
	ngd0scnwRFqUciv+fauu7BMDiwmYoWWkTfPWkjHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658928053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AnjVYfobKSMBEtgx586Q9EgKUR5c6LD4xMP6FVcJtTc=;
	b=PlCR1USh2n5sOuKEikRqA3EhrVR7dS2RXqs9Jvvxppw7XNeNPaLaTW3E+em9gGjF
	GJKVFmfcxw/MarDNu/c8cRjEEaZ+jvZxResVC7aNLBSqONCojtKdsb577VVO6iZVIfh
	xOZ4/IuSJPq9M6+jdSFPt3mqtauRtqBrEguwbFbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823fd13995-e9907381-0458-4024-9f82-f8d9e18a1ce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 410625b8d0803c80ede904a728d22c12aff1f80fab84d99d7a7c09ed6bf441d2
Date: Wed, 27 Jul 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658928052

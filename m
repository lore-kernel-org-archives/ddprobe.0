Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8647A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 05:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654752839;
	h=To:Subject:From:Message-Id:Date;
	bh=msZXcXW3AoeqemXEI/fpL9smRubvSBhKMh8Ds+RSJu8=;
	b=OfoZosVZl0orbl+ICijH00MsjiTVhXOiA5evtFqMfyLmkXyzdNdr36pu9Zbvd1Vr
	0zXjYivhNaiv1dgLBu8rNzFdoo5eoxNdFvZuZDdf8s27KJfM9Ob7m7rs+JJ2jwOg6qg
	GyBDDri/OJdGdvLiHMVxMoLH99oqo8dhaVEvyr8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654752839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=msZXcXW3AoeqemXEI/fpL9smRubvSBhKMh8Ds+RSJu8=;
	b=Eat8tXpvvx7RwwRBhfcp/XN982W93V/fzECBqJOpPNccD213cICD2xJ4ZhfPHtog
	5iaN6HN77izs9xfSeEAMm7h6hX4gyODsVyA5EBYvrjOsumbUfpjLBv+fVCPeTCv/EcT
	Vuam+Me7QHxxrlv9T3s6QepWbE+EbMF78rYLKhS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146f486b0-63f2aeeb-0eb3-401e-9bb2-f6bb1862dac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d89120c12820ca127fa34167b26a8070114d08e454063e8fa1b556683542e873
Date: Thu, 9 Jun 2022 05:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654752839

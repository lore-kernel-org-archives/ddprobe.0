Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884DC1FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 19:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655235480;
	h=To:Subject:From:Message-Id:Date;
	bh=z2jft4oYPaO0dRazbMsCp3nfczjs4hfSfPU79yZttoU=;
	b=Nb7rzzTQp/FuErVaGR9t19HshlRleftSh5mBMmqhHDbCUdpar76a3ewuFHqbJQ1+
	Dxxca8dVF4TDiJxxbXnEFYfsVsKgIVC2e96vcoah8hWbhJ7CCMcVlyIf/3aeAQy6vLj
	kdFkCgms74PyT+TmmxzndhhV+1IM3Amz0Zrl2O/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655235480;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z2jft4oYPaO0dRazbMsCp3nfczjs4hfSfPU79yZttoU=;
	b=M+zuVhuaLLUMawcWxgTpRz9DhG4hQr31SWWKeFhp4h8eBUA/4E95kctDn2tocQ2j
	tvdGY/shGRkwbGhLBhlF6RSG4Cz/OqINqEw86P0hBWtMYyxtaqrD8DsgmjHU3X3WwAI
	2/mE9ZvCbPWPGs61ZHaLoDcnhwe2Cyy0ptreYzYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163b906aa-7a11d197-58c5-4bd7-8777-67f2bab4157c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41123ef1185d4b2196b308b96cbfd2b87927f6bab507f791bb79846df6b887df
Date: Tue, 14 Jun 2022 19:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655235479

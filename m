Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAB42CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660239652;
	h=To:Subject:From:Message-Id:Date;
	bh=8sKu0ee7iQG9MT4iFj9A0FD8+mWWdTMmfoi5tSTL0Kc=;
	b=E2QaVmKJEb2t7ebG2k5PLV5iG+YmXbkuJyclaMxeGqFRPa4yiQvsAWcdwmCMR6gj
	fTEMrMYVKYhWMNW14UYueMshrrEoogAuZ0eyqkbVxEv55Juh2i1e/zkvPGbe8o/60AM
	GG7yAFkMocio/FLbh7P2VegEfpMCtUDqc2hWd5/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660239652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8sKu0ee7iQG9MT4iFj9A0FD8+mWWdTMmfoi5tSTL0Kc=;
	b=Lp9jsIVZ8eg6cvKgEAITR/VZAduGk7xOROgiyC6cDbYALwvcp4093iMD6MZVXdHM
	u2u2vfm+gX6FCfoRigc3gMC0M93UsG/IPsCLwxnJGf8KN/dsXSTFtNgxlCXPLzbWNeM
	4tujJ0SMcCyt8cQqJtvLpsPql4P6CCK5bhXR7bGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828dfea700-23758155-d9b2-40b7-8069-b8b2fa41557b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2bad4fb40140212d3f373eedcc9bdaa019fc2f64462a29bd4a9ce151f8c7dcb
Date: Thu, 11 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660239652

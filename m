Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131F33F7
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659901252;
	h=To:Subject:From:Message-Id:Date;
	bh=JzkAHew3PLkKEntiV4M3rKLz5QvEls0Qm1aEf+3L/qI=;
	b=a5IEIxpC+p9nCE6LQmd06n0fPv3Qhpn7u9+xt9zsc+g0V+6RjcQMrdHb0oeme6hu
	lMdpSpA14Q3pbGkiebo6/MnuyVs9PPjTb8Ely38zVehNpm3rP/c/P4tJTArpsXODO0O
	YPYgO52dQ0YUQOmG6NMRm4lXBDwGQHITN/vdaRag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659901252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JzkAHew3PLkKEntiV4M3rKLz5QvEls0Qm1aEf+3L/qI=;
	b=DuAN5lEP5mClLSVEmImUSYvR6CDwdCk1Jamb6Dh4Vz10/6eE1CHIxJCTbl3vOplE
	fU/24jGdbJxvGfBHqVW7uCnVptbkn2irjHoy85i2C0WqE3NTUvETWVbYSGWDrxrnd08
	sh+ApCGoJZOfJFQImRxr1ftd4cH8vbKv2nozXIXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279d313c8-0f33ace9-1f2d-430f-82a8-afb1675b4dc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcfa1d8964b3af7958e8af5a4a57d2d58ff63740e20be58bc87fad47f9f5655e
Date: Sun, 7 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659901252

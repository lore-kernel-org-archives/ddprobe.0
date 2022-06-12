Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194317A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 10:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655031419;
	h=To:Subject:From:Message-Id:Date;
	bh=McgRjfCuckkvHb+2ONvsNrkVZFCPPzSxT5K3CBJ7lWs=;
	b=WCTFZod8OmledxmH38j7CP1MZCP0m3cn5QGPDAUDJ3eCXjU7MI/FDGIUCO1F7yiS
	Hs0SbmbMNATMP2vIvP2hTHUsT0uYKnzcITCWL4z4gXsymT+ezVTzQQbPq55NIm79wz3
	hKQNcFagvB9iEmJMy9q1ehKX4XXqTpWEF+s0Rm7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655031419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=McgRjfCuckkvHb+2ONvsNrkVZFCPPzSxT5K3CBJ7lWs=;
	b=TkUAEOl03RHgNyTIPtZ6Dlgz9+ebyd8Kg9ZX03ng1jD5owe+ZuhMG9iR5Y2Wg74h
	Esfwf+NpvhtziYKBpTmNZRk72F2QxTus3cSENXCnXyidH/0nfvkR7IKKoHIwGZtWTwg
	wz1iB7noxpOUGERxUF6FeUJIN1/oj39g0bi8G5ms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181578f51d0-a703bb86-abb2-4d82-bb90-a6c8ba3e16f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 733b5409ecc1db9548bb5495c9b31356fdc8139740f3d6b37713e51a2e9d9826
Date: Sun, 12 Jun 2022 10:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655031419

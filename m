Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD61128E2
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658949053;
	h=To:Subject:From:Message-Id:Date;
	bh=Ow9ifFtHz1KuTpX2Rv2oAVnWYh/bed2dQIOB8jEPJ8c=;
	b=CjU76WWFgoaYtCHRQ+Eo764sXXLMRUQ4+YyzzUuO3zk4FvLvQszeyUWp2sPjUFgw
	fAScDJbXjba/M0z9FFGlYUP8yt4q5LmyuMYU+CQ47K4vCofKiHcxxHjvDoc3riatL7k
	dE09jRKm7IQw0aL0l3RmL2PkrpkllTrkWFA3TycA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658949053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ow9ifFtHz1KuTpX2Rv2oAVnWYh/bed2dQIOB8jEPJ8c=;
	b=L/TDL7WLY5aehEiaybMC2RsshqW1/uR0EIH2eMDWLzo5hl27bD+se3uY34O58Scf
	z6KYu2hd6U/lIihfT7kjBecnwZ2l8U1EpEPHOHnFYS03Gi/hTPndGu1NR0cNuwdkeW5
	whjK1qlIhZswuYn2kiCTz5mLXVhMWqLvpA+BpUqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824111a89d-246c1d28-14f1-4340-9885-61a783dae31e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 029e5b867b1dbbf804cde83528acc9588ef4b86d748b6ff6c1a1785c8edc5f11
Date: Wed, 27 Jul 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658949052

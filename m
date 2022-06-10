Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3B97C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 15:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654874399;
	h=To:Subject:From:Message-Id:Date;
	bh=f0TRsVqV8vl4ZWpVU1moNUQ4gxwOZpxEGJ3bBziYaR8=;
	b=R0Mlk71cvP4+FClcpRGcDCxbuPD7wrzjD30INlSBxDYYC7p4qHhC3EyT1O3tqZqi
	/6roZaFx7twk675ADX5xOXi0mGaZl0oEO960r0HeC+IKsjwLQLxCfqF9Oc3r71s9wSB
	Wr0zEl8RN0r+Rhcwg4eJl7lRP1I3JNaDvrZXJAF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654874399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f0TRsVqV8vl4ZWpVU1moNUQ4gxwOZpxEGJ3bBziYaR8=;
	b=LssN5kPqV5azAcfEJiPtLCiEJ2Lj1azecpAWgFslKlk3b1rw+syylSK1dZ2iINmK
	pYBBi/U2iW/ujJPc4dadnfDtTi4bh/3aITBDYBlqrdyMzX9Xs57dw5XHXNZKMo+Jpyz
	v0hQMU4vXj5MpHJlHd+xtkK5TzcGFsT5Ix0oKWqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e33620c-f3d14fc7-ad36-4909-aaea-6bc391ad4b7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d18b496177d1c633a0a59040fcce22d41e51f36542082225b06cb2308d8c90d7
Date: Fri, 10 Jun 2022 15:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654874399

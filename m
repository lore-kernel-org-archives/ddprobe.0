Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5662336A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 04:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652503619;
	h=To:Subject:From:Message-Id:Date;
	bh=C4VoEEskaQplTELpnwtE1mIMQayFjVaBrtJIxlls96s=;
	b=Q+95IWc4irPT6lj+yrjCKBRu3K+YNjnTTPwGAUthJJsBaEYG4w0ryNUFiqyw1ZPW
	TQyviN/COe0CzqnQ3ZkwN13w1RV4Hi4Gf5BcnLv4meTV55hnwwNfgcLxt6ufrJ3zZTm
	oYAtS/foexy1VdrW+wTyLEHyEveDqALZDGxMfbEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652503619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C4VoEEskaQplTELpnwtE1mIMQayFjVaBrtJIxlls96s=;
	b=i3Dsn1jAMoB8Wvwm1/vNqqx90xyFqCfK+Y0+BFZIJYQ3xcykyNNUDxLg2Fmg+BVL
	Qe1VT0mgJA5I1u558bZ75yp1TP9CdCFA5JdbF9mpi27ERsed/ftqVx0/64sE2Yz5AbZ
	tlHyBl2HM+heV520HoRpZZECBx4uouvFBMMEDDHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c0e42730-2b19a9b1-d101-46c8-8811-05db731ee3ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0566ca53e9a42efd023aad7c972ac80b84748d67a2f97a744a3398255d33c719
Date: Sat, 14 May 2022 04:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652503619

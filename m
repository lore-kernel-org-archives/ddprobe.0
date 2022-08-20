Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867CA28FA
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661005252;
	h=To:Subject:From:Message-Id:Date;
	bh=YEduW69OYawT47WC2Kyg+Vo/ARSPalywT7WdChUrwgs=;
	b=YWKSuh7P32JPw1ajZKlgJ44cAPNG8IJZdUBCc8PDEr3upgwhGGSk3sP1IOxqGFm2
	gEjz1kF0Q3rM/yEGsLstAm+lIt74pWQwgwydb8BunDhlzcytAmEbF1Stuo2sJJfRc2a
	FFnEfwKN8pno94dgDkp8huIKHcuPms9Oo34VoAhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661005252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YEduW69OYawT47WC2Kyg+Vo/ARSPalywT7WdChUrwgs=;
	b=ViSLzVHyOu5XH78DVZUKKgjDOjD9AQetZdNNWLVxryqlQ2QtPK069WV9ikdp6NeP
	0c2QQDSyl+c1c9LCy+rPIVSw8q8SctP86n1ctQiSznumVrQTqwmfP3wBjPrExK3DE0p
	EASOiz2yD4Cdnz59VhQ0AZ1wl8PVdmTdwvKo1zQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bba0c83d-66f48bdb-0586-4e44-82cd-3628a25d9254-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e523f98dc10774405e526595396ae8d2aa8dde4a477c58bed4ea41b4935946c
Date: Sat, 20 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661005252

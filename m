Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B9D1840
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657991812;
	h=To:Subject:From:Message-Id:Date;
	bh=nNXPGaVV+p4Gj/giij6ajw0HA70V+N8O8ydm/0zFQcc=;
	b=OXoRN5K+hL3e2GcHqwySFobZS509Z/k+U3IB+E+t/AMdlhXii7mK9mql/HzjHMs+
	t0Q/2yChqwhvrr/GwU+DhUwHOtCRGTb2Z4m8zKr68OfAgsDV7ek58m4mZA3ET3ivQbd
	BtPxLlV7xLR0iA7MGFfKuBux1EpVvlk932YSvB7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657991812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nNXPGaVV+p4Gj/giij6ajw0HA70V+N8O8ydm/0zFQcc=;
	b=hntbJT+HSklrkXetwnjvupAWaBATiaVNFg3lqi8i7v6f79gCMmHdsuKmyFXCIENP
	8DUKoZ17evy9Raa6omkGvt6cKmBBZJnjF6mUmrLAwdFMa7aM4s7RcqCG4pb7S64+eqR
	xlobxibuqVimsxg7fvPYbwNOisexwT+tezst7qcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182080354e4-3b9d8d1e-7eb8-4149-b943-51221357cbd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58550528eb8694ef9bca048fa023936f5dd1048ef81bbbaffab1ba50d2750706
Date: Sat, 16 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657991812

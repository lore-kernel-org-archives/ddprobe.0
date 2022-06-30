Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266E57B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656609412;
	h=To:Subject:From:Message-Id:Date;
	bh=qd5Rq1k5xRi6segcx5WD3e4z8rtxvW1Qcd9AgMdU3rk=;
	b=evwdbrIuqPcyP36lIyo862MOVZO8Mt4LiS2Jyh/MNc31H4Al86nOBSkRHWD4cITl
	AiJ4fqqbWZOs+MlbMDW/uEdq1nhJCMr4IA/rwDIxJup4y9sDn1p0hry365Vvt5OVKCC
	pGqJFu1rUDlrexDl2qQGPyuFDu3EXtsBw+teN/wg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656609412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qd5Rq1k5xRi6segcx5WD3e4z8rtxvW1Qcd9AgMdU3rk=;
	b=It1qwSKmZFBWSJqiLbmMO2r9kTfjy8lEgjVDmzSbEv8p8JdCog6MQPgezvnC2zil
	MIHucBhYfwHeK55dukbcz4bjFtj6NAdnoejpG/vaNTROMch/J0K1Ogs1hwjae8CS+q4
	Z+5Kt/VE3rdRhmpniOVr8UWBT59gUDenHOzbmdlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b59d94db-1e5c853a-f83a-462c-b592-4383ee8ee9a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9af68c632c8077a58c6b4ef27bd55ccd4341836490680c542b396c5e1793d22
Date: Thu, 30 Jun 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656609412

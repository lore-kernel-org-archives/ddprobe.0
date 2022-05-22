Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2201D257E
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 13:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653226799;
	h=To:Subject:From:Message-Id:Date;
	bh=PDehid0PMR/XWPRHiMOvFYsYwJcq3qgo0w04mkD+I1U=;
	b=avuumhCtDVL2R+pRW6uEMSpXiGKGp9dVvhCfVX3xpa5TUEBn+jbiuqO/yaRJkMqE
	QOeB0IxBuji7+I8yyvfLpHrGaiaQFJLErsCmzY2wEGrsdx+iPyY5jyau3jxeamShTmg
	Fkw8feCWwryZD9ypUrUpTBDTjo82IA+sVvg+yVYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653226799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PDehid0PMR/XWPRHiMOvFYsYwJcq3qgo0w04mkD+I1U=;
	b=NLZMWQoripS2JWnUv9o3m3Ck5G41LMtiIkLXMj43xbiyQPz8xH5JPKSaU8F0FCoH
	n/3P3zJ8F0RCsD2N25b0DGzM2DZaJCCuDzpiZ3bRU7lyUfKujl19XUF29xyWZnUfDF9
	tr/xHDkKzKa/2mYw9xyVs8EM7H5+xJ3gDrVybRuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ebff0096-0267d010-6f3c-4e0e-bd41-737c1410ca10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44fb00ac167a4ca0116bb264b2278a78960753b04ee55524c86e82943037a0d4
Date: Sun, 22 May 2022 13:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653226799

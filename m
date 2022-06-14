Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17B0185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 13:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655214839;
	h=To:Subject:From:Message-Id:Date;
	bh=sCiPQLIKCpsU8/t2U6hyUqfOeu4oq2cMabUuYPnWr2M=;
	b=XUSFKt9aoFrVyDurP26fvtSO6yoT2O3+Jt6SmB74eDv5JkZLpy+R4OvhrfK/idQy
	MAXSEIch2rfmQYdPGciUELieIcfFXBJzxauRBX7CabsCVwiMYyWFGFOpPlbDf+CGkd4
	+HSI24zPfBJ3JIK1hBHVQpq0HavcUu8/EfuRat+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655214839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sCiPQLIKCpsU8/t2U6hyUqfOeu4oq2cMabUuYPnWr2M=;
	b=al843Zgh+jLopSbe4ay7k2zW1GeDPowHkcGDjIPahQI3AfSAW8PVQ51wtI7QywWo
	nZOknX3sxProi5dt2I/m5jhsBc485JJP4/1dwChPc1oAleor6/iHyAEtsMejYkEMLz+
	6q4rQmxcRlAvLPGpLtonPspysjQdXV1ja40OZnt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181627e15b7-6126eeaa-ac1d-4ed0-9d4c-b827407d0f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9073c2770f97adbd947d65ac7255429ff16194314f7b69e15fdc8c0b3d47cde6
Date: Tue, 14 Jun 2022 13:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655214839

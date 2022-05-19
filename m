Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E361E1FBB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 08:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652949419;
	h=To:Subject:From:Message-Id:Date;
	bh=lDb3572AgojK4O1Lzrq8tntXWOIgCm8R4rppmZMDDfY=;
	b=AJ+JbeMiIiEq1bgompJ9jDc5L0Sy/oM1YL9tlNETtBjDSgRbeX5uc+p3Ej7JPXAi
	B+XC/Tq3jq//1sLcR+E/BHUvj/TWcfVD+J39c3REDFVtxe8eQBJ7K1iDRKwkLkxa3FJ
	Y+ZDyEr2LicIjtWQiHboqROYU0Lf/k0gbZeouozY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652949419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lDb3572AgojK4O1Lzrq8tntXWOIgCm8R4rppmZMDDfY=;
	b=Fv58icN7Wd4cOPty+EyCvgI8om9nQzdy26za2f08M30KHEWbc/q3igDvcMPmF/se
	CIDXWMrtAOUQvdwDlCdlOTyPtqvRORto9lgp1uSmqrLpV6rS//wkSd+F6tR1wBRsLke
	Sn7cweOL0w67GF4s2Ur7bG+2lKTakke+OlBo6A88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db7684fe-b2aed794-80b0-408b-83b0-c6dee61116f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77c17b6c7d5e603675dea75edb6bc37e4359a8278bb4d5ea99353575cde23246
Date: Thu, 19 May 2022 08:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652949419

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009B57C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 19:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653507479;
	h=To:Subject:From:Message-Id:Date;
	bh=ETwxcESmfx+TZthof3bd2YqYfvOVaqCdV2eQ2GYKpGE=;
	b=krY02khX9xS5rBs94MLx00ukzs47oE3Vsfv68X19Z3bzDGudcyxWhY6HuArijIn3
	75/7v/RgpHEuUTjj/29+WiOtYzZaH6AT+AVlW/WxSq0Kr5buX0TTUEZF4nhT2AMyapC
	cctGFcbuFcmCRAih49DSxKM4W4+qzotLSITASFcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653507479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ETwxcESmfx+TZthof3bd2YqYfvOVaqCdV2eQ2GYKpGE=;
	b=f9lJ4Zf5jKij3cbJCqufaFDWc/R8ilW2ExgW2Tp6fyrU2/xUY9KjHC3tZgpKjU+J
	VpKy1B8sjCtHKWIZTvR21Zy+Yc8cWCC3aEBaPMX4LRTvDfIszDOTi4fLUoewYW/w9gW
	i06qOctsmlhDwYSoN2YLwJ5Hszj+39q7qEqGesho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fcb9d6e8-ad2ad92c-7d93-434c-94b6-ecf1e47bc947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc0638fa7ff76939e6608bb98c4869dd2bfa796fcb7219843d78f5687d4c374a
Date: Wed, 25 May 2022 19:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653507479

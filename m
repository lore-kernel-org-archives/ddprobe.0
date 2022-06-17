Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0A07F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 01:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655427839;
	h=To:Subject:From:Message-Id:Date;
	bh=XlDgZ4BI4c/VPaVS06daThRWUzD31qiHCpe4EJLMMkA=;
	b=RGFxAILardFMgWM1TXdeNLK38Qv1gGI+38dYu6CvSrt5Kwh+FHlcLm+Sfe3ZnMez
	wmmhEvXyzG7aSe3HHgTTbN13bf+Bmzef4B8tWI+0yDj3KN3NZ1rfQ+KVr0Y7e1/YVPY
	rSNQ14W8O/JX7C+6viBGvljxQDfCbpXyym9pBef4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655427839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XlDgZ4BI4c/VPaVS06daThRWUzD31qiHCpe4EJLMMkA=;
	b=JLip6G5NumFaaHsf+aZPXiZAmtlJRUZvT+1MkwiIycNzAPtdXMT6ideJRbeFGeT1
	6hV9z4JySfDepvRABtOu36L0bNf9kW7ruFzuESNXiAZJYvp/NK1uH38oo5X2QFLRAYh
	MqayTI4eovmd/mVLxoQdmA353F7QElacha6/8YMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f3034e7-b6bf46aa-5417-4e9e-b59f-0769dfb0a9d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1254bb95f6ceeb86f4dfda663705a3673acff7dbca8590ff573433d84b0046f
Date: Fri, 17 Jun 2022 01:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655427839

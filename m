Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8490E1C29
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659016852;
	h=To:Subject:From:Message-Id:Date;
	bh=YTwX/gr+KGUyPfioUjq1s8EQrbvq925A5ervobkXYJo=;
	b=cX9MO1rWCD6jSDbe3P9h5PyacKGhQd7KWSlzscCbvrGwctssk5QOVBC1WGsQshza
	oWPD1Mc91F68K3AU86c/S4ZK3y6giuy/Im9WUs13GQmneah15xvoIMg+hduhlCfAsFg
	Nq1eD9ROl/EHj5g14Am23JZaEja2WoiJ8PrRkXT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659016852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTwX/gr+KGUyPfioUjq1s8EQrbvq925A5ervobkXYJo=;
	b=Q+KJuAiNn0/UQ8OtF2JzYlj0g47waxxc+YF66sVSAu43M9ri6Nj6yYOOhklaOv/Z
	cvlSZYL7B+23JlMjAcwm1VongFBrx+Sk+awwbIxG610Q/cmICLvES3UvaKNVYw2LWDW
	O86/gs497MK0btUNhc3qvlcg2xvD1cRHlV9oKRU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182451c3497-22f8b37f-e29a-44f3-b186-6072ad10e73a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4be959e408e9c7cad3dfe7285fedcc07d195cd89d04ed3be61090170218667cf
Date: Thu, 28 Jul 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659016852

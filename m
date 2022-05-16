Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFF5A35
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 02:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652668919;
	h=To:Subject:From:Message-Id:Date;
	bh=LXn9S28X2OzGqmnlKeaCgx1J/vmM7J7l0hTb5HYU+ck=;
	b=gbxVquq9XSHQ9CHCWixycOxpRsGuvqUtkIuS/ILUTLuFd6BNA+lqwTvrHxJQvsHH
	zhss4PilPXe4U2MvFr2VAAjC8hdF79jx6IW31jlpcSe8hWoCE3VCPGZIRmiT6DycMz+
	apcTl/jO8ZUsVl9e5uQ07sl1EMWbM17RTaVTyLCE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652668919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LXn9S28X2OzGqmnlKeaCgx1J/vmM7J7l0hTb5HYU+ck=;
	b=T96Asx0VhqoVrKNRaCRPulFTR7sBsqEBmkfblsux1Jkuk+Ktqd0Xtzmg5Dv40xyG
	vvYucYpdzNZi643kYQ3pG5gwNb0z3eD+l2xIEto7HkIWQ6v1RgeBNNu/D/KrsFvEAfE
	78o6fTNnGVuaTP84kWZedhDR6GGxx4/vbmjNj+ks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cabe6df3-7e4ce7de-0379-4e2f-bfa5-6b10ade104e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9b947f94f0e93d6f48118a5f70730635db86048eec3d4498dc1deb01f8c2a71
Date: Mon, 16 May 2022 02:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652668919

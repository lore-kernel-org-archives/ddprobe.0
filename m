Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7872100
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656319012;
	h=To:Subject:From:Message-Id:Date;
	bh=D5wAyET9INvIj2d7oSGYw+dVWNXmOAlbq78uPiPqrpY=;
	b=b5o+pDXv317dMOFYyUlb3gA1YGcDF+rDO/Uh4nahdudO2fjqAhgyEC6xeuJYiCjR
	9kQxpdPi8kBEKX+JonSmlCpLh/PeDFwWfbB8bUy4KQkS5YG3JJzW7L6MaiFy6PnkwES
	/VAKKyzDidOE9Zwo6DbV9S03dWFLl5Hcetal/Mtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656319012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5wAyET9INvIj2d7oSGYw+dVWNXmOAlbq78uPiPqrpY=;
	b=PGkR9GiMNZbdwlprXe3jZX13TJ6W4vWDKXg9uIALJ2xrU08UAVc/ZJki6CMCWX8F
	dknOdYdcO0S4pmNDkj4g+8j6ZBdTQw9B17Pwl6HnZgoi75A61D2FpACl/NTX6jBaAxo
	To2a/o/LQkZoMchKHnqrN8zOzvcimw5TPIQu+bvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a44e6dac-66ee8dfb-11b9-450f-a482-2bbe66c1ec30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c08825e15c5730960c28bdc06c05c76cd2baee4a49e454fd9d4e827e4fc7865c
Date: Mon, 27 Jun 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656319012

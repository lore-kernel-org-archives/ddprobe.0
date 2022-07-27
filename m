Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A04A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658896852;
	h=To:Subject:From:Message-Id:Date;
	bh=qpS5izfqrRWnadBveYOcW2VFXtuhTVdYJNZ/UpNR8RI=;
	b=LQloJPT3IoVaWZcgVDEo1C304LAbHpFywo+mNmk2H9G5762whiLb2zt0y/FDbkAK
	3fROKuGm/CnB7abTjAyhi1qfT+yPExJYQLoCrst5/Dea9Df/lqGrW8TlOe2mNrsEGXR
	ii+ZQR5IyFsDNBXLfru7ybZQLy+rSezbEPWM8h4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658896852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qpS5izfqrRWnadBveYOcW2VFXtuhTVdYJNZ/UpNR8RI=;
	b=EWCqZz17aoXw9iUHS4zduDC1zIgQuOO1+E6rSk+wzOvJNtvYsD4PVK7yyM0+2/RR
	hXYhSC4WG2/yYTQ1G/yNUkuhDw9ssJ2U5BHb9cPYbuq4/nHaU3hDtRBQ8vCdSs0W+v6
	9hFvnMA6jaVLDtjv7Ha1TKD0tUr2uGbzcMXfrMLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823df5265f-37e5662d-404c-40af-8a16-1e6c723033d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 828f1a74ce818cff1cf8e9785dd07c5325a7fb601fa20c0473cbbd1175dfe9d0
Date: Wed, 27 Jul 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658896852

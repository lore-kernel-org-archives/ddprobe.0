Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C834A20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 03:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655782319;
	h=To:Subject:From:Message-Id:Date;
	bh=mrCk8tHhp3PAbt82uEJO5NO5cGpXGDyD9BBeOX4MP4w=;
	b=VoSq92tWW+ez+zzHQE4RYvSP28FHQFtMRFGif8uQTEwGHrbxt6ioHfXE+0ZslskP
	p0f8Q2U4TelqS+1xrMrcX86k8cL2G8sy45YYjXziSOXQx0MWKBXLTlloJ3eJCYhnYta
	W9idiK4bIFlwn9cFK3liZJR2HonyBEywr8zGnXeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655782319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrCk8tHhp3PAbt82uEJO5NO5cGpXGDyD9BBeOX4MP4w=;
	b=HEB/duxHnr+jTSgLAgJuWGGOKn/Djjf5IFmXcMIRQIXrqG4w4FNsasglz52sq0WG
	siDQwaVZX+bAzelpDE40x4P1tG8VZccHcjTqb9CU9rEMmOEXC01kdHHFPb5ayGt6kER
	73M3Im0AloE+RriMJXmxOAsE9Jd51kC/W7/OASRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181845124a6-593d4a5f-c68d-4fdb-9909-d4320cdd902f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e65051e8b95a2d1312ce0c5e1a62570218b39de3268cbcbce63baa8943d3eb6
Date: Tue, 21 Jun 2022 03:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655782319

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CFDECA
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 14:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652798279;
	h=To:Subject:From:Message-Id:Date;
	bh=1xyojGhxx5jcPYe+vf65ntROea/NJM2PVK0E7skW1Ck=;
	b=kgcdGxhsbIPqri7CCY7L8GjyI61lgCFZAXNfbK+aak0fS1tUBunaStHaMyPb6MCD
	qdAmHAnI3SdtLHDT9K3mMQ741JgcatLrtD9ZCloY4a2yo9AUfUBOGBsioLckCTEQyem
	ECCELUiPZz+IJM9we73TGyJlvlxjUq8p3078DgXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652798279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1xyojGhxx5jcPYe+vf65ntROea/NJM2PVK0E7skW1Ck=;
	b=AiGzefolx4ogucFy8kgGFiJc8tpXewaXOvinfS2aM7VqSpQ98AgLGYZ6wd7I3EyF
	WdXf6BhJSKdC85AnZ6hY92UjSAHaVboIUya6bHw9GcjIX4ISMDiPC7L1RRWSN/IRWOz
	6cLVI8WMWW3Sf1BbVwKKOG732uO4XxHXqrn4Ramw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2744ea7-2d3e502d-8d47-4cef-ae52-fe2971198a3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c10ac2e20584af30ad146ca5152dd5d1eb2e11e4b86391393305325aa527a2df
Date: Tue, 17 May 2022 14:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652798279

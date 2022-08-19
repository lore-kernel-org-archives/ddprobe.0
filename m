Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761BC17D6
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660894252;
	h=To:Subject:From:Message-Id:Date;
	bh=YIMI48VkAxKsoEiLTYdlk4LarxySxOnZk2aztzIZXho=;
	b=dHvskbzEK9hzK2AH5tJQnyuXirMq5wx/9x0mqhKS6sTIitsKm+0erTHFmHeMZKnq
	H6ujPzKX9DA7qIErGr3qQZpHn+8MMuEwGZDzk+WuaP8RVpLMpdJqs34KsN+YaZSCzSK
	c9QcqU2+Tw7xAT3D1i6B6CuCGyXs4k3xUNv8QgK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660894252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YIMI48VkAxKsoEiLTYdlk4LarxySxOnZk2aztzIZXho=;
	b=drgXs7iZNa//sDhNSosf6O9dMzL/+2Fifah0cJdGS4znrY2SYt9YWYeYNVJAI0T+
	rz/hpuZGqtP5krdRrgr7lWCowd92+9hhbg4g7tXK3Nhdtt1L59g05l8WTad6u+jLyCi
	hc1JdaFg97schv2dwB3gMgXO6ow4aCiLJtM7FBMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5030e05-5eee0353-c21d-4ab0-a035-c7784bf10b5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57e8bce1a071bfb81b0a998bdefe419f9f20459faff8dce1948c7c8d559c330b
Date: Fri, 19 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660894252

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F328D2F2F
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657795012;
	h=To:Subject:From:Message-Id:Date;
	bh=pWEUY/v+NK3wAjlfL8mLfD3pm+ACbNbFZm8hfoVjFr8=;
	b=ixdzhQESzCj552RV7MuXxRfenWC3MIPk8MPsM/YhpDy5k4kh7VPmqQGIJlPyxJDL
	vkURAd8cfUvOfO8lyaOjMFRp9gsPMpW0K9IWfjUwdU4/92I5yRK4kXLRDPFiE6DISi5
	poj2nXWmFqWnc5HUJslc1KWoriyAAionIF4NJEAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657795012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pWEUY/v+NK3wAjlfL8mLfD3pm+ACbNbFZm8hfoVjFr8=;
	b=KMhs3IRDFu03NFTaqpzLxuB/VeFe3kAiIGf8k1JTWKEp9eLLvXp1hj0Wdya/gOTQ
	Ia5VnTMcDNL7cuUOz/BWhdKeI4y/U5s0619GkoaTLqsr690rvmJCzbqldTb4YJOsIvt
	GCdtG/aDDM8L0ixXErhihNVA+d20/22MlkaTivdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc4866cc-9475279f-53b4-461c-861d-0bf91c6537bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9f7af4d488a1fd187003b2117b3a5e621d3e1634d9e9ac00fcd62d13aa53c9c
Date: Thu, 14 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657795012

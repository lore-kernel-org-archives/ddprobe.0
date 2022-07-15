Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEA94C9A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657921613;
	h=To:Subject:From:Message-Id:Date;
	bh=Ag4pA3XHwZbvNoB2eEp/RIGaCyd6J6MPAS0rzUY55sk=;
	b=MlTcc6o2Ygo3E7/bcCBHLCwVPWD9w6FVD8ZbyMIJMDkkqqwsR0Gx/YplEK4SwXwK
	VkEvFLb1JR7s8nVY7MkH1+WpigO62BDOgTXXsR+seiq/hdx9hVZi1gI9Herb+mRwX+z
	2RsZXLC9BlQwnWHGrW3Uq02tBilVJwaWQndjYJ8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657921613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ag4pA3XHwZbvNoB2eEp/RIGaCyd6J6MPAS0rzUY55sk=;
	b=O2k/k6IV0JhIzbC0+QXKVeqoqDwMwW62qn9QOjeREK1DOu5MuK8Lpm9WCY22CWLg
	Bd0C/nfE1BMzrxy6HzxeZ8y1L64xK/n/grfoDj1eVxK9No7lkubeqrM0yPL/AmOjXOR
	tzODHdo5fD0b5h/ujzSWPxuY2RXxHASuWsk+i2t4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203d42a8f-5c2cb0bc-39e0-416b-a6cb-69a06ad5dd7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4ab72951e48bc20e10de63cf431db524c1e0b946f056bd055b67be87d522a18
Date: Fri, 15 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657921612

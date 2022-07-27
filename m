Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A0628E2
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658947852;
	h=To:Subject:From:Message-Id:Date;
	bh=CeaRWMQB7VB+yP74Z8wfGn6KVkbZphphHZDj14MGc74=;
	b=RNNJzmuFY7mPIzefkSxYUZjOz6xZZYu9jMtaW+zYLDAiF8XpdmOFsS6bpU6On+e1
	7D3g65MMSrvfoxXCyOQn1Xf8pLTVlbhDZfX2qiWwENqcqsYNDr9/HbVz8BHT5DS1J/8
	N5iVlJGsuMMeLiWYMDlEqs3gGecMsGOWn9NpAdas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658947852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CeaRWMQB7VB+yP74Z8wfGn6KVkbZphphHZDj14MGc74=;
	b=aqmV9P6HZ/03aKKum7RBxaApbeQP2etPb3GPddHr+qTlhrYKTEp/DVNcZXcWc/DZ
	jCyXlfCpdy6x734pk0+PDD0z04/PaTLezGneMFQyCJUDCDVfxuO7fdwrmN/9D09BgKN
	x398lD/9cnsNjxh3q6VUDhxZ/Fv2AZIE7Ds8SRD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240ff58f0-afc90247-5425-43a7-9326-4f4fbcbbe440-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 088661f23cfeb76f90eccb78debb302481ecdc122faf3c679cf4ee71114f1082
Date: Wed, 27 Jul 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658947852

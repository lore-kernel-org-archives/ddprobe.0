Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104611386
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657485412;
	h=To:Subject:From:Message-Id:Date;
	bh=0tXO+dPmuTjuompFmktft/dUOSkAq76fpJnWoPtL05E=;
	b=FAKoPsQ3sZ71fty704WZyGF1Hl4duVfJiXLqKv1xKyQzhwl0wy+rGzrSms8RZ4iG
	uxGJ3vEkdrHo85HhH+zSAmvJu/lGPzKGh1GdhjQl7HEygG33efa/TUeGtFygiWGe+sl
	kWtdqkeiCLFlAqpGC6GoXHTloNpgji/ACGnopyFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657485412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0tXO+dPmuTjuompFmktft/dUOSkAq76fpJnWoPtL05E=;
	b=H9b7v1eGMTTsSsf6hS2G0p44tQyygyptLtQRramLKbZR7a3gZnDub4wj54OO3rE5
	JDNyfiKvSonpA5+R9ISXEfZJM/BQal7Ec5oKy/Pq0h5Gu3501FZxvuyJgkM3TU3HMWX
	Vl2f6DFDl6qXTFYKp+ihYyVORcQiWYC4TEf+dvyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9d447cd-d636c32e-c9e0-4f63-8862-0d306ba610bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03e8ab4fe7369e9572f03948e5901114eed7c4354fa7ffa6e5c8d3f40020188c
Date: Sun, 10 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657485412

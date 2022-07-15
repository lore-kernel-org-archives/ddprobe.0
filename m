Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235657A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657876612;
	h=To:Subject:From:Message-Id:Date;
	bh=Y19mIcdSyvjD8kHr9Cvrxl1Yv4NKvikm9Mn10kJsaM4=;
	b=GvJzaVsI3vkr0P/x943OjMVnKoGg6ELm3yvaC85MnQzkpuLAH+vpzAHoR6DTQm5j
	RM4+ZhlKWP62yLwBFSFlWgbA3Ho4Usj5szMeR/xAKA1da6KulbB5xbeWhFQZnG86mvI
	k1XSZo5Fk72Caq0XWMN2XABgwIKS0LsJn1u/4Efk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657876612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y19mIcdSyvjD8kHr9Cvrxl1Yv4NKvikm9Mn10kJsaM4=;
	b=YbRLat0BHkL6S04q/OAe8mUN/NWem4yg0XbAnq5SitgT2RnN5pDw5IERP304+X9h
	EVKpQR6VUODRBkHMuGMxToUN8MxwnEA8CgDkkKkZi7Lq9CUSQXbbxdubrvu5nUUvtVs
	PL1DibQc8rzX1vlHkPWK/909KcW51gjubFGmxYl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182012584c9-f163c33e-b754-42cf-aa31-21d696920725-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25599c72154ce2419a67eadead706655ba05f3d7b699607d71da775fab665ff1
Date: Fri, 15 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657876612

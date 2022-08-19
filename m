Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EDD2F52
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660918852;
	h=To:Subject:From:Message-Id:Date;
	bh=aJxikpiQ6ynIWWnDxIdux4ZHbv0r3/61aQKqMJI0A3Y=;
	b=XhiaEZg7BCocVtBG3ztWDeserUfZCsJJKhTxXr9+b9sXt+tLIDEckTuCJz5yDHwO
	ZxnEEuRH9OpCEaWWZ67PHAGfHmQO1nYkXB85+fRbzG6OkbUKfxlLuVDR9m6KGICF61U
	okEmTgzT5oUsYMQibK+l/yrp6u0T5P+qIsrut2T0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660918852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aJxikpiQ6ynIWWnDxIdux4ZHbv0r3/61aQKqMJI0A3Y=;
	b=UTSar6vfi7uCmAVAk8Y16i/XcAZM+5SelX4eP2msx7oeYxGZmBFsxgythvcAFu3c
	EDO4m3Jwxx5Oen7iTgc7SaWPc1Ez1x2aWQzgBjKjAxWh1Yr/OsJRxnzYD3J78eYuHkU
	hrVH3sOxz7Y/dw/VNdulPxz3n6rvvXBijeNFsrvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b67a6bd4-d14f9e0f-3877-43ac-abf6-7c5f1120886c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d129c7bfeaac19c663e4273d3a16d89539cf0f1850d7029b769908f51aa4b26
Date: Fri, 19 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660918852

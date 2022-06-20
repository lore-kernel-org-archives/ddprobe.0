Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D3C3D6E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 20:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655756039;
	h=To:Subject:From:Message-Id:Date;
	bh=y0x3qrnETbnO0Lgm0yDXBV93nEVYH61NWBhn29d4p1I=;
	b=b4WWtXIjVtJ3wFAc2p+LKH+cMnavE/pcP6jVV+AgAN7p50k7NGxp/3MIB/wvBABB
	o9gj5VFIY6Zc5t5qexPBVVkG0+PuCJppFQ54TW7TPgLV8e/xS9Yw0kSA1t6tBY8vc6q
	fdOPL5ca98YSr1a3p3mkOLDAlLWjuaab+O8d/SMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655756039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y0x3qrnETbnO0Lgm0yDXBV93nEVYH61NWBhn29d4p1I=;
	b=k/J3AV5A0khXEpmNgi3aIZi5sa7ZxGe0j+/HvtbiB4mSgLNvIuwDN4dkgZcYK53A
	iVFpUPnBqqFxPhAmUO5NRkO5QKDV4zEFMSRymFsJJlzZDEYrtt8pp7tyaCd3SXy8a/m
	t5cBZzs/6vJLqhOu1ZThK5Kd0aFEc30y9TPqddvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182c0247f-9054b1c6-4810-4877-a2e1-9c093daf481e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bc11af3300353d32aa7519c11b5ebc7863ed442f25b79fbcb25204bd3615c0b
Date: Mon, 20 Jun 2022 20:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655756039

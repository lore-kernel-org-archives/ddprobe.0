Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94AB91C01
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660492852;
	h=To:Subject:From:Message-Id:Date;
	bh=rf/51s53APjXLpBqO6p6ebl2ill4Msw3NJOA8F4mkHI=;
	b=dx+IgiU86BoQuSdTyLSTpO/u7769CDC0r9ZjN9tFAZIazxDTajrbjOdNrK/ojJWJ
	/IdPH61CtUbwS859ubCRQiF8FCAcFR+eUYtLLiiUBa61LjGcjTEy6YyjJR4oqfnFOqJ
	KJBGe1fHp0dTICw0dQYbXN/R803KZpe3HAI6LLi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660492852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rf/51s53APjXLpBqO6p6ebl2ill4Msw3NJOA8F4mkHI=;
	b=QytnaMRcyVeDgDMLcOR6LyrSv5BalbeUm/ZSplzK05Hzk3MFV2EEdZcd5gWl4Sp1
	KYXRr1G3R0zdGSmgumxhaCrWJE6peMuLePwAT9Chyr9wEGRItJahfU0xoWSec+T1W7l
	Soid5+4Y4cmgsYE7Mt3T+mzEM39KcdPvIcQs/zLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d162d7b-d5025477-3633-41e5-aed9-6f989509a838-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cf2bc5f122a0af7c952dc0e9ec7d71e42e143a747aff700bf568b42f9306d9b
Date: Sun, 14 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660492852

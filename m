Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2661101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659003052;
	h=To:Subject:From:Message-Id:Date;
	bh=8F7ybRnKeCRQrT3HFZUARO83C7efe1dKmllyeucqPgg=;
	b=aQ8h4iXtyOcaFrB1CrqAN+lkdeaAw2lMNG5VivrZTviafDw6Hs2/Qu4h4kfpq+EW
	6W2dhQXMqRPnM9idtTFVvuzTF33q8ESOsa88q6m/pV7t4aGzMI+Dg9c+azpwNavpaHG
	7y4V4DkgLrn0YFKcdFv+e1KZY6iR1SR75BPKUyQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659003052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8F7ybRnKeCRQrT3HFZUARO83C7efe1dKmllyeucqPgg=;
	b=WNXBQEOIwAoQgekbWLx04AKRUcEtsp2q9JXWZc4gCudfu45e232zkZlIDwOIO9mU
	lAzKvxNRWvpbbKgbzd87eAwdi3NV9rDqtovFgEpJCB+k/xaOiVXqAk6qtKktmD3lcWS
	RKqtW0Nt4HoSYT87GJC0DHVsK7sfD/VN2jGWH8eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824449a238-7ebc39b8-abb1-4c37-a0ea-7a753111297c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be20f0605686a15ec368105ae7f7b80a0dc34d6913ad9d30303b71a46e03fd3c
Date: Thu, 28 Jul 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659003052

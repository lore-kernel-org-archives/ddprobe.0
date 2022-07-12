Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27623FC7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657631812;
	h=To:Subject:From:Message-Id:Date;
	bh=fy4OcbxZ909ar8bm9IayCVxKSE+ARInpLksCBlsp8C4=;
	b=CYPxJONbaM2LeWZFUJJEk8/D0BgjuPjojT05lBuiffqlJQBfp/SbuCWgzoznHrIk
	bJRDQdnWXpC+mzWs9B+9xnAf2eBgQNI0oyZYae8BlIFytB8fYIZylL8VCHfeSmYjp9O
	ox1vzZY1TXKXxelJ9PnA1wglJeGiuFH+hGhd6gp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657631812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fy4OcbxZ909ar8bm9IayCVxKSE+ARInpLksCBlsp8C4=;
	b=I1ojsjajwG02Nxiq1F/mxxR2u4PqkF6QTzlbZoFz48ZVEPfTqLHbEXGMZPVElVcl
	bpaanfhyjbo2VdrFf4YIiLVeLrlIlDhd7OiKo0H6u0xfW2+3vuHK30JoH5VT4xjYW03
	ysUTbKqfzsOoaVoaRpY65d4jAYmirK9xfhboyLCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f28e2ac5-69031b06-f517-4bca-ab87-3506089d707f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e439c5a832a1fe9f2d0e7499833348e5dea61c407856ac63f79b9897611a6554
Date: Tue, 12 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657631812

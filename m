Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675994C77
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659117052;
	h=To:Subject:From:Message-Id:Date;
	bh=aCJ5qHOLi5R3N6v+eEY3GVGpDUhcnntwvVUeS+rQnLA=;
	b=TOWFukTsFqDKtkvw3GZt9mJQsI2croR/9OGsocNoOhC4vDnKcb1xEwIhotqd4myS
	y9I6rI5OVt/Qr+NYwHUTkHxyXNDKIqDtWEjJhPsC6foFumoOnRVnf9rbXwik3wpRiyP
	hwTy0QNYaQAKFp4gfts7TV7p35TS+l93f6QGXvxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659117052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aCJ5qHOLi5R3N6v+eEY3GVGpDUhcnntwvVUeS+rQnLA=;
	b=Q81oNASZpqteTWXSIwm36H+5m2QJqB/FAX9HbigKeHwKJ/xlyqvg7Yo7aR/chNgM
	X2L+qb6zzPm8fcHHaGt/ug02SaiPoB225qP7OQ1ic9CnJpP3oySFfP45t6D5BlJIZjs
	oOhU64sADJ1Y3YtCVWQCdnaYL2xE88TG7GNKCVjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b1522cd-e4af86bf-efdb-4cbd-b3c0-f4270f36f518-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14aeedac28891678bef177f4a0c99db5a997c3bcee4009840bdf350e715cc4fe
Date: Fri, 29 Jul 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659117052

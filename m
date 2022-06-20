Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1547480E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 20:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655758499;
	h=To:Subject:From:Message-Id:Date;
	bh=gHVeDDeKamiWDTj/NtYcDFluylDxb0oSZ7uKwmpORUA=;
	b=MXcE7cmxdLxCR1KdBqmR5JWdyzbzFbqs5DOiDCBbIkqHbmHCa70+zIp/IYvpZ543
	aZWt4F9Ze8HN3fqhdNc86F86bQYeyLfleepHEhBoqKQxyrSa0gfbhcsSYBZCu9uVriT
	n5eckO6S+0LKoBuTaMjgTvlbn2pqD9n6PILVACHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655758499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHVeDDeKamiWDTj/NtYcDFluylDxb0oSZ7uKwmpORUA=;
	b=NIAepNcYuFwWtlL29lLhISdTCYRI2hZ2R3k3Fb0AMHBE2XmHkbRymCWP+hMfgplM
	Q4njw1LgmrQVYzyCKiAjSc1JU3iFoxjJm/o1GpQpelTxKJcDOCPwDU1eTar3XZ1LK6B
	9TSeKbDx/hTiRuMO5A1EFK0qSkup4+Hf5RsKFY04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182e5ada4-e5ffbede-2fb9-487b-9a15-4f6f5980f1fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c25e1cccbbd63577153581a291bea7b7043947a231edd5404ffd9b4b66c6ec0
Date: Mon, 20 Jun 2022 20:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655758499

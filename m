Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6E13C16
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659192052;
	h=To:Subject:From:Message-Id:Date;
	bh=bWFlAtPNOAodszaauyAk2SFRtSBVpW9Jpv66LEFfskw=;
	b=h+fT+g1NO4umQKGEnDC8eTmhzA4b6SB1zqfAJ+CpwEkwXBEi4EYgHO24qAQDAwfj
	F8C6+JY6UVz/+frBoNvW0Vn6WWp6m3vJWCJPQswn1l+/7XOLo49QkToLYExDMAJ8Klr
	EaUVB2u7dxFkCODtNESJMz4LvVDI/Xma4HXTxV2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659192052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bWFlAtPNOAodszaauyAk2SFRtSBVpW9Jpv66LEFfskw=;
	b=gE1l6cJoMqpRj0j9I+4OfSlBYTBHXVePpfuomPsPQZRKvYBD0wKK2Gn2la9LMHki
	elP8YAjP+VY8yNPBBpJD7GAzS9RoEnSQhiOFx+ek5ODIV/VXbVLr+GZ2WYhB2/nS6DH
	zGD/711Ieq21h+ZfrpTNQ0mZJk6r5OsYY4l/XjoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f8d8b4b-eec740f6-0c59-4eff-86d2-73f3445c7ca0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df1d372598e2a3f52bbe1417d0fd712329c5349777a17d5e5d3a6d8ef97458c0
Date: Sat, 30 Jul 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659192052

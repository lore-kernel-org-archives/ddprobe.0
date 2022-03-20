Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECDD20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647811284;
	h=To:Subject:From:Message-Id:Date;
	bh=sSBEqipPtmxyANkpiW+9KHTMYdNac4BcMxWkKNh8mP4=;
	b=AW0x26KXXAZoOHsy4gjSz3881ljeZY0eZlrm+ot35dng/o8a/cQAA/n7bjkdyv0z
	qT+gz1g5lMuaOircJiuNat9YKEl5YBeV3FGCLxw/zg6fpvLAziM5qQPBiZaTIYGtjUJ
	4cP/FNUzsJtJF41U2BKWxqvHRhj5lKeDTCgWlQV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647811284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sSBEqipPtmxyANkpiW+9KHTMYdNac4BcMxWkKNh8mP4=;
	b=khbLf4mHzqMOr6exvA3GynCMA9WK57TTO6x2gyzlsZCmb1zSOjEcVT3Mels/s4Iy
	RK6dqGBvN4x9CC6lRsckp/WCSCTJhJzGDvABkQz6w0Y4DewwvGI7rMMU7wCpGh9q/1N
	XKcZlTxtjJpxM/Xg2LbeZkKpM7PeLyDfl742G7uE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa934ceed-d8d88273-d33b-4adf-ad53-7de5ce4af960-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5d24e46cf7f6403694679b50e6f3b0757e6cdb3730026c044e169bd6eafc3f3
Date: Sun, 20 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647811284

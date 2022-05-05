Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D67369
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 00:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651711918;
	h=To:Subject:From:Message-Id:Date;
	bh=0KVJxZZgrHAv4l5GtHvNTMajgnjkLOqEyFTg/8xKdJs=;
	b=dwyS/8qMv+BcyAim2fkESCHux8CSz3IB0tg0wnXHU3eOdrBRLEwGSMuuOkS6rKSR
	zs0azech5zFJXjhiUOx4tLQ6HErE5y2TyuURq0uzdKYMB1DvKU4XD3LNE8/8QVWX4tj
	6GVpq83GrdPen2M2GEbIaKUIFz0cMddt23UMviRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651711918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0KVJxZZgrHAv4l5GtHvNTMajgnjkLOqEyFTg/8xKdJs=;
	b=Hhnr/x2OdKmV6Qc6djzQfF6LVLaicNgbrlgOGWSMF36yvd8Y8Fn9sOi5vd0vxQzk
	ldlhBZYLfq6OVfWD+KwWpOnM2AoRCuLxGSNBftpWm1YbJ/JtPM7b3Nw1eucq02ZTv2M
	BtkH59sAN1kBqQ2U8VQAYq6mK4ADjkE7vZNFwd9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018091b3c0a8-5ca36ce6-18d8-4861-bdd0-5643feef48a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3631318fc35809183c8c8bc8a8847fa8b833dd9003546b15675ad31524a8a38
Date: Thu, 5 May 2022 00:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651711918

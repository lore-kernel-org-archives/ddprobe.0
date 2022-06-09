Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901EE7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 10:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654771260;
	h=To:Subject:From:Message-Id:Date;
	bh=UNR+0R0Ws7j6dJAKDbWIe+GyzAv+U6ma4Tkd969luVE=;
	b=HhvNfHxM2qXR5Jf2psn/TNvSpOlQekMs3ad6wdg7bLLvaLSGnoRxL+sxj7ZZCAzo
	UFl7gWdp1d1caQSIgR2FkjPQ2MMoNYvYe+nrQD3J1I5BtuRi1S2vEvqOZFLb3IqzXgb
	nw3/ots+gIJsYBRchOu4NNU6KMGr2SCxkb8vmOps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654771260;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UNR+0R0Ws7j6dJAKDbWIe+GyzAv+U6ma4Tkd969luVE=;
	b=duMlfiKirHPI/O8SLcIWKaesETEk8mJHbQ/zV1IpjPXyAJL+SsLKMazhJDCP63ca
	yTgBev7XD/+Syo8Wh85ap2dm6eHYjq5iLgVRiHR2icHvYjaWS8HTv1SKAICop0klFme
	GnKVRTREkkViAKvbWwM9QZKg0/KOZQq0MIocuMC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181480d97a2-268854e5-daf0-4670-a2d4-58a005fff75a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b790b8b77eae509e823034368b0044b335e2638a5beff8af6e78229c6f7799a
Date: Thu, 9 Jun 2022 10:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654771259

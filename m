Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1720D7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 01:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655687279;
	h=To:Subject:From:Message-Id:Date;
	bh=EEBvGlRRicgJe4CKHYbeaDvF9IIbwKBAkmy2stZoyws=;
	b=T39y1Kf8v6W2zOblSva9Y0jfyvfus9gUtcenKeUZ/Qd1AT1pMFW07aS2rj5yfN1U
	ymyBG7mD3sMUDROTJYMSdngTWBweORh2t77rveRCcKFQhW4tMXKel9C3i38LwgzaQid
	3RkJn2BHQyN7ckl47NMtnwk1uwg5htoTtlJrhLns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655687279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EEBvGlRRicgJe4CKHYbeaDvF9IIbwKBAkmy2stZoyws=;
	b=HiNB3Yt1vttnRzCdbVgw7kjk/jWXuDMZyB27cHeFr81erSAgceH3d+OAO9azfuxk
	lGHylsboawW6cW5Fgz9F9j3JEKEu5s4fPlCKgtDLxuC51V7Ak4EqL0YFExSQx9tlmbO
	vPdRfI6JZwoE8+VQOEWcKJcmKB0TzfQg6Ov7YiM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ea6f2f3-75ba03dc-ad8c-42e8-b620-65d61cd97f10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a441a6fce1263bec3475f98da6cf7ad54405ed3d52cc4fe648af218473b0dd0
Date: Mon, 20 Jun 2022 01:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655687279

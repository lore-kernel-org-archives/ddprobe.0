Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6406B7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661296252;
	h=To:Subject:From:Message-Id:Date;
	bh=lypxSmu8bFclwtWWmSHBjbFqsOS191KGtVP9AYlS80M=;
	b=RuHT6N+h630qazEUY8ScnMo2X2YP/JjoEmXpnGJs/b86jKiGCCyEOHAJZzN5wdSE
	4BPKTbz2JGlv6Kbsih2qBxED4SDHqHkBCyIUKXMUlg6o0vrmgglzZgclP7FUrzjPXtr
	z/9qf3k7rbeDcUMe60PCWl2/VM9OzoIwv/uzqy5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661296252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lypxSmu8bFclwtWWmSHBjbFqsOS191KGtVP9AYlS80M=;
	b=ITMCyb5LYKUCfZ2dyLjhax39JEXJIvke3UY0NJH8mOiDNlNCYTc4trQemOpP4Ns6
	iBoavQpHm21nGeUV76I/WsK9wrm7RuS/niApzzkPcCBL4ZY5IXihEEj0lPjKqKJBzER
	tN/Ork2stxMAwLcpk+qo8xxrxOoAXQueBLJ6ELE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ccf91684-90742ef4-46f6-4f52-a4fd-f404cee09c00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96ae010e22c2d56bdc183b53ed1aa21e7278eb720ed2a34bf43a2365b4d6f467
Date: Tue, 23 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661296252

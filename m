Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0807620E8
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 03:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651635238;
	h=To:Subject:From:Message-Id:Date;
	bh=BpLCGtSHAp6Rv8FWO4UflqO8hOoV0PQTzwDM60VcF9g=;
	b=EQJfqvl8V+JZWfdzmS4eQlnr4KXO3rgkKayHQMvTCfH20RyfiBDMCDnURWTdvRHV
	yq6V+onuyYG05a4YUihQp9dPSx9crCNEgo+GvZwTpRTkxohUR/HcduomW7v/xUjMm4Z
	CigDK6umi4QfD0OMWUQDKN3Vqt9qbY4ZSipdtsMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651635238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BpLCGtSHAp6Rv8FWO4UflqO8hOoV0PQTzwDM60VcF9g=;
	b=eYVsxphu+L45IWEJ9oEW27SZ9pSs6cuG5qjI3SYdfgn1BnuyeQoYGDyNb1iPL42F
	opkeWRUXwq3Wn6fu8bjIq1vA8Tz8QGxiVG60ceWGrpCVYUgg/kyxjdsu37wfBTfB3NH
	f6MlQM7eIAxZOQVjl3sOXWVBHqimKc8RjhNzwOUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808d21b5a0-cdfa7dc8-1c40-49c5-8c5d-760a131cc991-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b44da0f598a45cf37d5fad23140bd6b80b89fe78b910453fc4675faae23ddf76
Date: Wed, 4 May 2022 03:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651635238

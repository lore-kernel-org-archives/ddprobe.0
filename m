Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9D62F2A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 22:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650754438;
	h=To:Subject:From:Message-Id:Date;
	bh=POTiJ6ij0w9K7d3qsRS4EJ7kJR0XSv4xHETP6q3F4PA=;
	b=WYa8WTMJEhe3gGMLr4DPHTRs4JyMCZ/tPiV2nf0xo+FewN8XDaWwYiDcUlYCHM3u
	DXvm00k2/5ipAFMu+/w7PGhxgzGsaQ7VjAOB8EeMhGEcFB3WGpa0MBzFMkHsfgbrF1T
	FOAL2o+njdlroriD/P2x4ijQuHfdj7vFwY/fHW/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650754438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=POTiJ6ij0w9K7d3qsRS4EJ7kJR0XSv4xHETP6q3F4PA=;
	b=G+s7/Dff/YJewAJoNncrfGrTxS1R6uT0DrqzVqCsDBEamZ6pJ3lezPXtRg78RuoR
	3Ihjo8r5UtcBs6OYoWGXvv/0NZk1eOWV273yoL98KlKPXxcVlVUq9V1p+8ksAJqFUZu
	QHD34YyfFQ1fQlLsPVbSzGqXC4vgGkVS20lPrroU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018058a1c4fa-ce9aa113-f234-429f-8e04-d096f193bacd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcef99b1d0b15fd8e3c7e7e2bbea45eeedf1c65d4d7fc52bccbd187588003fdc
Date: Sat, 23 Apr 2022 22:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650754438

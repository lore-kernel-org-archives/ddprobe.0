Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5683319A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656212812;
	h=To:Subject:From:Message-Id:Date;
	bh=TF9K7Ejuawe7LDaS/Kn/N2zqui/YKy8c7ASp1n80m4g=;
	b=A2AIuGcQy5RGJkb+2pUEB6Ac8/PVWu51uo5DjKAAnkJ+CWhhmMCvIl8IAGPgp2fW
	i5+JQqz6ZtLHUQMUGYkh81GOCVDJuUcw8ODdkpgr0PbKiAnr2LkgeAAmAAhjXXfjbKj
	o2RdZTbXF5n2EGzMaoCOSdJ89aImKgavrp62Kn7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656212812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TF9K7Ejuawe7LDaS/Kn/N2zqui/YKy8c7ASp1n80m4g=;
	b=Kxz8Sf/nUmv4eZxhHNQjLsLSQXOElRJV8NYPD7IesAZdOrjiOnaJFn3lDY/IAWAi
	tntKc0d43vgxlMjt5A9Kvsg57X+kQHBKHL8vF1Y4QAKxotZgz9RtsEVjTF8E5E15AaN
	jxfMpYYN4Deiv4CwEF1Iz9eMCns04acjg3RojJ6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819df9f232-1b586e3a-f51e-4a9c-994c-73fc6bd7dc5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc68ec740c0f291724b7311f55c61c5d05749a8edd6be9cd1687229cbeb10fbb
Date: Sun, 26 Jun 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656212812

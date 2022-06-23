Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DCD1FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656009412;
	h=To:Subject:From:Message-Id:Date;
	bh=lAOD6lUHfJnVLtDCozZVVYVQB5/3v+8oSc9Ezf/YEx4=;
	b=FgClmzYUmzY8fvDqVyGUO0kJsIMla768AOelnrodY0mxXz2hQ5ecZfkGSsMihpM9
	KiMdcF3eN+CvKg5VCYrqEFReQpiTCDkZX5vmk8zZfSj7aicHxPf5rm8455ReFl4O4zo
	lxyHQ230eKfhNLliQbvUiaIlPQq7O/AmDfgBFr6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656009412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lAOD6lUHfJnVLtDCozZVVYVQB5/3v+8oSc9Ezf/YEx4=;
	b=MJ9bp3/woWb9EP4LeOecvPutw9aUSN9NRrNRY1RfhzUmbHTMFb9iSyHr+i/qQKda
	prjc4NqLwlz2SHf5Z5IUL/Y/Jfv4wdhQqfzPPD4mrLev6gh6b3gZNaAy71D4Ep51YWt
	Je192xm9jEp3zXcAyJ3t1sKqnd4glL+s8z/SEVF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191da4ee4-181d059d-bf4f-4606-b9d3-b325816c32f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddb703e4fe57486af416a195b649f92cb4dcabbc44909d2dc73c1b026ca6462d
Date: Thu, 23 Jun 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656009412

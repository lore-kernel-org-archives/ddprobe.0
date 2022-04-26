Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57B67E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 08:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650961798;
	h=To:Subject:From:Message-Id:Date;
	bh=42gyXNtWPG53EQoEx8AqlPs9JByk97fkCuAB5Fwg77c=;
	b=KmkIeR2GUYp4GnSGY+yrcUqx2XrMW91ckKrYKoyXtoXZiczw/tvXKMXtU2j2x1j0
	umAsrqZwbddIlvblH/5FC8U1BrTHgpYamax7XlPvOmG0JZJLpj4ekJ8CuPtjYI9JkGN
	+sE7x/BWRE+x22Qt5vFWyOi1jWBzdz/C27oXGIBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650961798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=42gyXNtWPG53EQoEx8AqlPs9JByk97fkCuAB5Fwg77c=;
	b=Fid4CJzErKTFgZqKPTaCS5B0AUsSlMnMibpo+lfjjE7VLRNsJusMXoidoGGEpBBX
	2QPIgMi5a/w2HgXVeyqvVkwMy4cInDk9ao0gIna6ydG03nBHpudmxHBr1hnieJYXkT6
	JySQySoc0rTOshlitKtcAMEqXF72T/LBd4vpefpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064fdd48c-92886de4-1e23-4810-a4d9-dcbb7a5a7612-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf73b2a5ed556c8cdacf1f26ccf602eeae6784280f8a700d63fa605a69298ba8
Date: Tue, 26 Apr 2022 08:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650961798

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C83A15A2
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 00:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652228279;
	h=To:Subject:From:Message-Id:Date;
	bh=UZ9ytQGQFN/OwZyN3FjywGxdEL1QIMDYQxyTT4ETlNc=;
	b=QbhvlOU/+iE14a/dTAghFkURBDmLiQEDNdDq6n9vJ64GGRZK+WHDMrp6NZvB6s/6
	8ppCzyvw+3rIPspcGC+ZZ14E+afDPvIxfQt27u3+XkNtjEVx7HZ8kMaPEcamAazx+6s
	SkjUvJfLSTYJ5pvpIegW+j6C6h6hMBoCOcze6U+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652228279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZ9ytQGQFN/OwZyN3FjywGxdEL1QIMDYQxyTT4ETlNc=;
	b=cLzVc6QThxoVs29W80SIwhbG6beDH7AQeKozqz3nspaMZNMIpQ+aA0fDsxGiEc5E
	m8LrPtm6GHaCaKPCxUEJsDjlU6z9JVNEzScHkijRYFtqe+XT0ymHltnJ+Nn1V3cKQ3b
	MoTg4wD/bWgTFdFaMl3KnJjXDGwDyuWME89mLnP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b07accd3-f4bdf9f5-5020-415b-9a6f-869fd55f8fdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5326af15d11ad7eee7558712b7a5cb3380fef2da979a3eb31c41c428c763112c
Date: Wed, 11 May 2022 00:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652228279

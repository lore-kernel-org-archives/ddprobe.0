Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6804A3C
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660431652;
	h=To:Subject:From:Message-Id:Date;
	bh=V2Q4bC0m/uIwvjV47uhV5Ipq3JJ7xFdrawC89bMtYl0=;
	b=M+rYl+24Nk6TDRKis+q9CJ5x+IzJ00kjuG8zbh0QZu0i7vd0a/0zWxulWdFFPlnh
	WdHzM1y12DEBed1dJlmK7pnDGaiLgkAcQ+vHotz20AhA07QXByfL4m3uXhsskuiNgoD
	PkWdyyHSD4XgsRWnHBEYHDVlkM7erHLbvN5Fsvn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660431652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V2Q4bC0m/uIwvjV47uhV5Ipq3JJ7xFdrawC89bMtYl0=;
	b=cGY2GqkM91/eWAFt1oMmO+KOr/o7T2+EZ54fTvOAG9q3Okt5SJzdDO4FN1KHau6f
	HqRp/iJUuh+a7GuL47L85G/CmRlDXSKWdrOgJCxKwVj5PHPOmRu8tNxf/gri7m7nnYs
	TAcnFkkS0AZ2EOPdVz9uSdb/gfbrdfid+VIX6eR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182997056d9-4505dbee-e4b2-4355-b5da-8115f1c1611c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f681fe1f757cc224abbe0db3c18ec9d8b562272e1af98e21510023bb20b82d73
Date: Sat, 13 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660431652

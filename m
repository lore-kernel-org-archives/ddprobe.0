Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29D07A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 20:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650488338;
	h=To:Subject:From:Message-Id:Date;
	bh=uBEBmXz+/1MWXafOjc823RI/AFv/8V14wpWR4jHAmgk=;
	b=T2vzwj6sli1p7m73LHL5dX1ngxx1ADIc+r7EgkVCgD/xZHEgqM6GReEqIYb/11bf
	GtEkXBqCTlNKMsxE7PFlDTEGHhgmibF8b0UtXvWP18pkWLOJJDKmcWqeYTQhU1xp7Ny
	ZXaxUBZxHVli/tAcAoZrJrPCJWpHbOYa66GqZNEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650488338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBEBmXz+/1MWXafOjc823RI/AFv/8V14wpWR4jHAmgk=;
	b=B6TgZgnRppnm7GDG2TFVufjLBoXABICwriaD9ob4aSCn2fFI51Vs9M0Tk2QZLP/J
	XiuLLelhIY7nWG1Z/N40Vrf7YHjvPBzV5/zIM9TJmlPj5fIlAz3rrNJcVPLLeTHLfVo
	X0p+FqcaHFD95fqQZhA4allH4roLw2SBAiRATM1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048c5674c-79b6b81e-bd6f-496f-8c67-b698868bea9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 101a95b647180d7dda99f2e05ea9043a73f191a77464a517e24ff53cd475a3b5
Date: Wed, 20 Apr 2022 20:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650488338

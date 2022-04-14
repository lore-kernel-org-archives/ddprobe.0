Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099D13219
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 20:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649966458;
	h=To:Subject:From:Message-Id:Date;
	bh=BCJcuSUlA+oUKMQqyW7YzocTE7HhSzr5nU4LUybJzwQ=;
	b=ip12cEVEsooAHIJrMj0/0iRuBY6FzHCDc6vviRqQvkITdWs7Fkc8+B1M1t5k9o6S
	QLekrv08bcjYO/8WEyem6E+z0oXQipFGGr30H6b/Qlj2KLPvcg2wLxhtve57Eultuoj
	DbT7/tGXlzkadqjnh6lff+pnb78+3gcl5DrUnHd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649966458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BCJcuSUlA+oUKMQqyW7YzocTE7HhSzr5nU4LUybJzwQ=;
	b=krnxUOcWq4gTzmMEIQvwhlmT6BGpGnAwFosKUjv2pUiqbufBIw6YoSjx8y0aDwHb
	3khmtyDwQpY/gkDgagzENZTms7eFa7axtI+2ty4oSx8t6biGCQbT9SvcergHTc+YoHO
	wNCcHE8/yncEv+aF7e32H8I4g7sdP79hckcqPOqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029aa258c-4c4ecff0-7adb-48d8-bd24-4238e1d28cdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19d2fb71d678bb9eaad4264840a0f8415cee868ee64fc52c0bbba6a646637437
Date: Thu, 14 Apr 2022 20:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649966458

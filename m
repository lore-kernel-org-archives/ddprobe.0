Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DAB20EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660988452;
	h=To:Subject:From:Message-Id:Date;
	bh=oMT42Bqlh+9//vkMON/9Fd4y3V6JOERLPCwiBeClZS0=;
	b=gDDpClu6TfbD+mUdxLwb//MIJ7gDSfgE16vz29vLeB4bePNy934mpdwnOnva2F/k
	++6PMRQ0XdJ9rmIoj/b8X5cD3+SNg2PJzuPaMgNNeqRbp37QXut3MhDFR21PhRqm3qj
	KryHKee0YYiXKOOEoIB79fH/D5tEOLWcsRjcuUo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660988452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oMT42Bqlh+9//vkMON/9Fd4y3V6JOERLPCwiBeClZS0=;
	b=hWwiO37mIXNNFkYcuTYDPH30MjFKingX1Tw0uXmMslcoMCtBpYcG6xdSSUEL0apE
	7oHCfXHmsKKeHjJ1/mRDhA1AbokEAZ7b24o5bAn7/sMyNlgroyfx694MRiZiTIbkV7T
	TU4wlC6nsP/5ENBpetQQHWcyaXS0vslCU3TybAXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182baa06eec-3c7a30e6-01c0-41e7-b949-ff802400e786-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecbc1a9b122875bf1db486490725c197db8bae5b2c8136108741b223464318a2
Date: Sat, 20 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660988452

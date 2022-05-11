Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EEE15A7
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 01:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652234279;
	h=To:Subject:From:Message-Id:Date;
	bh=dUcy3yJsM6R9CnE22OHkWApsQMxeKAAyiKahpY7vcyo=;
	b=hRNyPaW1XJ+TkCwdSf8CFggUSk5PENw43cY07U9uwImxbxG5MJR2BCWLqXpwMqpE
	QPlWpBAvAfipUDIzhj4QpWKPtbQOoiJP2nip1VKO+QJzWhNjBqlmwFRtS6fPNJAmoPR
	r0XRFdby1tCSXLv/JNkpYjhhvbK8Cd8GtHVTZ2K8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652234279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dUcy3yJsM6R9CnE22OHkWApsQMxeKAAyiKahpY7vcyo=;
	b=aO+13HIRbeL+YDj771Ddbi55X376IBYB4Ped9WtB/wuO1IPCjCY5tVeAafoEKa20
	k5biXG1eWowFstMV1+kZiXLq6gZfg9Hi+lLUTWm/VCMzC6rUpGtd7vZeESEyabQfk6o
	XzfxrUiaLJYlrV1tEmZOj00diE9i4QPg/3s1UQFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b0d6599f-485fd7ac-7840-4c2c-8da5-6280c6628d98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6dbaa2b7230448fac9ae596dac04585f190d60fd450219d303fdfcce103aae6
Date: Wed, 11 May 2022 01:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652234279

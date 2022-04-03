Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026ED1FC6
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 09:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648976998;
	h=To:Subject:From:Message-Id:Date;
	bh=ZCfnMcnkGm4hfgIXm332mCiKjTEVrbJ+Auuijl6sMqE=;
	b=aKQoXrb2YxsCEzFkHEUz3z9E2ZOw8COt4BA2VnhsjfKAUQ8ZC5LEhITbX05hVBaO
	lDKavWD0OqJZp83+Rn5ZSnUXjXd5sEJtWRsZ7s2yunUI8qyycLE/yyDp+hoT4YxLWxm
	bg9NYW3bBWfv/0CSA63M5LtIo/MTDz1JoI0goEj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648976998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZCfnMcnkGm4hfgIXm332mCiKjTEVrbJ+Auuijl6sMqE=;
	b=KFlpxI5fqGSj/JnHxKihdL/U+PBLXFdypLZyXPdHd3Qel3DvsbF+bvcr+5MF1EJ/
	h80URQDDWiYFo/wJ5zBF/h82L/6VR58+b9f8Hgm8MBPrHOUktlJLLGRx1O3V2NsISpq
	FSvtubK9Dysq2NJ1eRsbWUk53AvO+8QBOU82qfM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feeb02f90-c49e7219-64db-49c1-b322-bd7c8228d096-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9d2175474a24b166e1c8955d44bc5c860381d6c67ac9a8e8e34dbb66448e288
Date: Sun, 3 Apr 2022 09:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648976998

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499FFED8
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658928652;
	h=To:Subject:From:Message-Id:Date;
	bh=eN/T6zbMhdStevzfNgRChO0VOkuwGKAi4/1RcYNW/Ps=;
	b=I+LgeBOM4RE4ntzXCsQWmqilqti9n81CfTJC883DNbER14VN8nGTNUiDMLmWvT0c
	EKGRcgAIb+4Vg09oXJwDN+UVpP2ksjuIzxGAFtWwPwdXXlOFsqWN7Wt2xDuZTZTvMnp
	l6GqbzODt+KRL8f4P7swOecuSMhfhnv9/fGFVAhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658928652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eN/T6zbMhdStevzfNgRChO0VOkuwGKAi4/1RcYNW/Ps=;
	b=bA6w3ErFuaspoDRAqWzNjUaJKo1hnKxLY+GlAVrlweV2x5pRNZvhk+5ensscSBWo
	zNmSHiZw/Zz74usGTvljAySZ9P1dJOccd0oPz1l06ERaRvLzmRO/MmzKz07iD999NTM
	QeKPhlpfwffg9J4MxtoJu8epZ8GLhdEVsgF5XmWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823fda6124-66a5f564-38e7-4605-b6bb-623d63071ae3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d5ca82821817d9563f8741ac08e38621294c61a0ae3dcabb07a718bad99793a
Date: Wed, 27 Jul 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658928652

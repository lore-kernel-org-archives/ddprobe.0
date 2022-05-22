Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EABC20E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 02:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653187499;
	h=To:Subject:From:Message-Id:Date;
	bh=Ri7XdWMCRVAvpgbNflU5JiB84N0BPi3CNoWsG5zJt2k=;
	b=NC8lT7YeJwNN2UOeDbzZ5OMHtidFMhhCHXWBlZWCpaw/50sBULqNVzjMNebwcZCz
	sDiLEezKfdhxzNXcZJq5IofUfiuLMbGICal674gtSKQAQXjBtCXoHM1HfHFrSbquaGS
	kb46QRoFugmmTfzRXXmFoGsj+QXnIIs3GPDNu85I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653187499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ri7XdWMCRVAvpgbNflU5JiB84N0BPi3CNoWsG5zJt2k=;
	b=iGn7YFFs2dmIrtUKcB15a4ZX+WLAxA2cvg4Ctw8DetQ/p2jLdEs9ZdcU5vk/siRD
	s4rYUT3vLl9+Tg8Z/69H6+6+lHaZXqsgAwzy2GW5aIKk/UI/wTktugl9a4Vp7X3SGUv
	Z3lcDSleClUL0ZNnkF+3t9V7LTTGX+UfNXOeosVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9a7553b-6519ba19-6533-456f-b1ec-79b2a213c77e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc94605ff351d3df7212707880a030564f389130b6c97fb1f8f31a7b5df953a3
Date: Sun, 22 May 2022 02:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653187499

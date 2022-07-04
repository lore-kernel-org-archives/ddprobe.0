Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0970D46B3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656951412;
	h=To:Subject:From:Message-Id:Date;
	bh=HOKv3EvdKf5AS3kyi4EA6XPlIG/AAISwTlO+zUvYVgQ=;
	b=fTClfsXxGSBw5kQvvy64xx7JoefF3b3PY6QZ+ILyH5Zm2F6vpV02pS9jmTBJu8oL
	p4S14SsBCzlhN3oo05fSuaM6zlR1Q0Ze1nOfUx+ogZSn3ubbMOihhtIcpcF3neqG18h
	0kzgZR1AWt4blcu0ES7P3l5qSdjWnQde8HmCHSus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656951412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HOKv3EvdKf5AS3kyi4EA6XPlIG/AAISwTlO+zUvYVgQ=;
	b=MVpJcIJw1LLypW1DQNHpzOO9ngHlSRxJPA0zyRO0KF3Z/EavBcSRi0NfrbwxSWr8
	OFz4sSshIiAdwj0Oxwv6BEeLGyD4JMUzPs32lJ6aoyeF14Hq40FLizPXwwdkJGcowMm
	kS/fsha/Mm1IfJ9gxj4ohiyd+yKuhKgpxGenRM88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca0016a4-42d52779-6dc0-42f4-8e84-c778f0769693-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c70ca8524ac4903b6d66181e5b42a22e3c5f8f6c4c46db260970dcb6cf69960
Date: Mon, 4 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656951412

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33197E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 10:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654079099;
	h=To:Subject:From:Message-Id:Date;
	bh=ZelDY7ViOv1SMji092r3YNKU6OoyXIM7FgsSyC1HzzU=;
	b=kdmAkJUWp7gnk6N62S7T6jkz0B7b1PDSaJdGmpgjtJ9danHfQUySljRrjfqOS8Za
	Q87wfonbwnptGRtWOvLtIO38vBW9DTQz5AJ1ca2JQhIC2BtDN9GngAya7DbnAnbL1lT
	uGBwKKe7+HjlMUPsVTh1ZxCnq+leh6APmLd4cNpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654079099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZelDY7ViOv1SMji092r3YNKU6OoyXIM7FgsSyC1HzzU=;
	b=E3LwEH4+RRhfVtw5zsif7p8BWmHPC27RnjGIi9+dh7FLpnyLkY7T4QnVq3ifTYxf
	ElXUGCXADgPbjeeDISdTm+HSwpGAYGs7D6/scbeQNn1D4tQoZJdAgOXuH+SX0lSi4K4
	jWqud22MRarfz3r/OhD6USZe6QaXmKA0R9IqSOOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ecc117b-235b991c-cb95-4532-8711-2de5f923fd91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 011349764e181e40c246f4e98e763c94ade877516176d0d16b2a2d86add134e9
Date: Wed, 1 Jun 2022 10:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654079099

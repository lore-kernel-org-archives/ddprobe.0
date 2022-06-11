Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFC87A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654956539;
	h=To:Subject:From:Message-Id:Date;
	bh=6fROTq2bw5gCfFaKs8jWNVKSRI4DVCrRQjAq8PpCeVk=;
	b=cH4Mo9BWda+9oHqORUDeDHVWro2t6/pV1yOChI9Oiviu5PJx/GR+jhBD5pR2j7DU
	qCBvs/l3UeanI9BFv6mQk/kwmQO7KEGuKQqo4z1t6jkzraC8MXw6v/8+og27MKbq1l4
	yB0OD5LMAdF3DDpZvb05YM+bjDL7QVmztnFD5gMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654956539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6fROTq2bw5gCfFaKs8jWNVKSRI4DVCrRQjAq8PpCeVk=;
	b=cTIbPbi1k5AS/z4l64to7BB28X1nYTSr5DqfRqBmLNlPhAqzGsaB98Bc1Z5QBeTa
	r4063IYi+Kv6ZGDmUE7vG8O+c1QmvXrRqhoTsL3LEOeSe3lXD3Hlkx7vAIawtgWxrTJ
	WmnzOoP/5qWdA/KRRuVzP4Owq0QbgbuFxl/OOopY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815318bd68-c518a5c9-3964-4451-8469-1af7e26432b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1de5be6b455aa7272a7e0601639af43d8d8b35feb4fe46e8fa84a2c199960c95
Date: Sat, 11 Jun 2022 14:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654956539

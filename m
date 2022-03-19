Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B672180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647689484;
	h=To:Subject:From:Message-Id:Date;
	bh=SrlxAlsV3fFhqD52k5HL6tSs0ZaMtwNxg4X1Pl9AJfg=;
	b=QkHbvEda3pr5ljYV1vHfEh0h7R5Wzl8QUS+DYqQaNpCQWs8gWmagHnCzDyB7bG8j
	cjPGXFe1mARpUI+P8M93im7qrsB9t/7n0/+RfT9sXBfyNOFsYWcxRWsHN9kWahw4wg8
	UPyH+aJVWjiJcTOhWFkwM8SfdanxiNwHT4lNCHtE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647689484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SrlxAlsV3fFhqD52k5HL6tSs0ZaMtwNxg4X1Pl9AJfg=;
	b=TRaIydQe+rnPi312abtFYqJLikEo9GE5tQIh4BQvxB5KksiYU+zAQ5zMvB6Ko8Ow
	VYMbqB/PthYDsOh6BtAkC5gXxBoVtNnb86/OOhh/xHzdZLvR2hrqSHbsOaE+kBC/aZH
	5o3sq08ezb6AurAqTw+zVCAVQ6nUfLDeVX1kqgkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1f249b8-7b2fb831-7156-41a5-9962-d2e150f4076f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f717dc2aa496c6b1c442b1f9f5410f45e531222d7f82ab3fb2b971fde86d0d53
Date: Sat, 19 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647689484

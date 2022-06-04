Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FD1137F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 16:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654360019;
	h=To:Subject:From:Message-Id:Date;
	bh=YH621oY4mehT0YzdIaDoM2rxiI18SzZTY05Bj8ZY7jY=;
	b=SAk47HWetLUg38exjSmcZ0jfdx/JMwNWBYJQj4nsT/YzIBvdqy9ELd1pYaGk0M99
	4DQrgelKJ5OAGNXcyR8i4S114KwMHuir8ChdsfHY9FDPBZRsm0n1C8OdhVMiN8A1LJU
	cwtJIQ2Ao2gIZ2mqdfTuzFFHqIjfxdPzeBkPp3Oo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654360019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YH621oY4mehT0YzdIaDoM2rxiI18SzZTY05Bj8ZY7jY=;
	b=ZO3c8m2tFtcimIkB4SJZpHsm+8T8Ki8lbZSDzxQ9ZXLMv3p0YjOjPBiYvg7WzLmx
	yhLsw3OB97ktxMmDt3Zjlq/CqeoclmfDdxAg1GN+TctqKPLekFMywniNZBGHc+vXM+v
	y7Wz3I63S27PshW9Nn0vlFN25foKQK1qBGB9K/Bo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f8a913c-ce6228bd-9ac6-41de-8f19-807f58ddf365-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5ad5285cc132d3b51995795c1b7e15929baa826fc45198b8361548c4dc710fe
Date: Sat, 4 Jun 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654360019

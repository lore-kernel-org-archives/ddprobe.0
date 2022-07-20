Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82AC71FA7
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658288213;
	h=To:Subject:From:Message-Id:Date;
	bh=oTVYIu64Ct3ZP+0uLXwYuUT4PsJn85NLmC8/CJvxyaM=;
	b=j3bchj6Onz6wQ1+zZJdczZtb23iKBYptJVUzCIPBCT0baZjyPVkIrUPX7PwkFN8D
	WrRESkWxAirabNcMbix1XERPWPuNBKC2jLxcduhVHhQVyzV1zLQmcKohQPD5x1t8FVW
	MbB4yyK6FXl9z1NT4KhnOxKDC+qeNMiCRObeYFWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658288213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oTVYIu64Ct3ZP+0uLXwYuUT4PsJn85NLmC8/CJvxyaM=;
	b=M0p636kliRWMcBv4gg5GTibhA/8ZrjrrtinhySwORg5rsb+dxiEiFlAvoVqQorqN
	eEstAJF4hmt+MOCnibFeHpJdx9w80YOOxAM5QmlldJfcksL+2LXBj3q+fjvUS5j6NDl
	Vg5+6wc4Tyu9N+TkoKv+dWDPdoHF7EYNoUCMjdkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219ae0972-4c17050c-8f5b-4797-a90e-d5b7820fe328-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03b24202cda9a90e4c45ea840f2e84b47092162f7befd4a0f7c3451919669041
Date: Wed, 20 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658288212

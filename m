Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396B41376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 20:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652732639;
	h=To:Subject:From:Message-Id:Date;
	bh=y7RnMpuOslFJKlL2WEzZX0Z7ygoVh6zs8ghOH7TJWBI=;
	b=aCfU6Bwk4JKudW/eGxLmUzBk0AEpASMI+sPwsUqmX7RgkE5/kjpXUva3JImTmLL1
	YYH6+NtXZbTtxMqTkHQRjkaK/H9fRSXnyiYOme+ephQ9v4FNcS+IeOG9FGM3v116G4C
	vlxMeyMNsPoMXtgUMyaP9DOZL31f6skxOS9QxfTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652732639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7RnMpuOslFJKlL2WEzZX0Z7ygoVh6zs8ghOH7TJWBI=;
	b=OmvuIjrnKCfk9dPHR7i/vFRjWNpPrXqzr52rVISusfFOgvhVmStuZAyv+WDLeeG+
	b9b3YClGV3PyVJCQIpAgsjVHBZNdwazH7vP0kd6ErC9Afz3Rg4clJZo3h5K8kACQVoU
	tNXNqJBuUse6DjE7j/NWMlEPGXceldCNlG0EyFik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce8ab874-1bd4295a-888a-443d-bdd6-2fa5d03eb11a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1b3c034d92a9b8a36e15dbc47a750419870b8dc21c023a49ad6c2dfac3453bb
Date: Mon, 16 May 2022 20:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652732639

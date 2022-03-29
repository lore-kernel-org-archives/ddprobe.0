Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524ED2565
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 14:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648564138;
	h=To:Subject:From:Message-Id:Date;
	bh=6MBTgju0UHz95YVJT4omyQbl+sh/xF91axCQusA/FMM=;
	b=TjIUv9hgEKOcAX6i4V4qchiVmEBmBFo3jVSDwhzYeRyYE3m8/9vF/IyJfs+ge2zd
	Uv9MqwbxOHQZpNVLAstjvR0tblFgfVPbF/O6mUHP6C22MqVsM7ThDP8SbTwmFqiY4d+
	cU9FFN0IYQYCtpFsr6uwrJwklTIXB6ArKTBR69zQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648564138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6MBTgju0UHz95YVJT4omyQbl+sh/xF91axCQusA/FMM=;
	b=gMPSq2CXw5sqaWJAdC9ez2IB93TQudSu+B8IHFvyfdveRVBo9+x0Y1Xrc34wfOxR
	aqxKAPrR+v16WcQRgOQTY6I7z+5FgS0KewS309N1xWH3V46rw7PRr2cjjWdJblMa6ly
	oe3s4wEjKvFA3L3OjIlIQ2U0hGd4voZGfqLyTt4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6147165-b9a49f49-3ff2-4218-9814-0d84c3061e2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ea743b25cd2a06958a6c88e3729a31b2cdb683114811482410aeb1a33b3d9ae
Date: Tue, 29 Mar 2022 14:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648564138

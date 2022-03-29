Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73681258C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648583158;
	h=To:Subject:From:Message-Id:Date;
	bh=2e3gQXVqs5wI3qJZRtbjGHsaGkPscGlPslnHWW8+UiA=;
	b=CRA1foYodpHtWTyPXjOGpGOGJ4lonJEawrptcVTP14BShbSfQynx52jLl5AhIkpo
	UyCJxwK2Bw1y9A8McL+vxSJnF2MQjM1CscQ7t3w5WGSaCfsIbR9J9RQbEpqKGLqNZhk
	zfudcc+v8Yy4cxh/geH0Twymfry8SK9Bz/u5iRr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648583158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2e3gQXVqs5wI3qJZRtbjGHsaGkPscGlPslnHWW8+UiA=;
	b=HvdxtaLBT+F7/cP42pefMmgeWt9pWyA5h4s9A0HwVWUob0T3C7+/7dPU2OWhVLL1
	bPhgw1Y8zrhnfLFwnHgEr5wfftc9RDexpuRhktSk9b+n3I+UVU9D8T9DdMdEnDvSzKs
	OmllNEDGVHv6hSpVY6UrO5NJgcRgVoPZajkTq0mA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd736a9f8-6df65865-a2d2-4819-8270-a127b782b993-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b394cb24c121d402280b5c31df969fcfc937d8efc963e2b17339129f798d8e9a
Date: Tue, 29 Mar 2022 19:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648583158

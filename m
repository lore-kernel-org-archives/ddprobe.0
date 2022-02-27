Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821FC2F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645926385;
	h=To:Subject:From:Message-Id:Date;
	bh=gpdZPnffZF4SbZh9Ce0rNSOOsUkikmIv8X2DjOkK3F8=;
	b=Rzj4DndZYZ8XFpGWbBbbBTC0NbTEArTZBOK53ZnFbRzIWHSJ+L7HtjoFFs/4xPon
	H4aV9itv3IXXBP1iguSB3ai5+b5DMcv2OhWsqz3PBSdDpa8mkMbO5SMKALgr5cZ7aYx
	E9D/aZ0D7N4DLi/Cnra5H9YFvxrpA1C4ut9WDc6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645926385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gpdZPnffZF4SbZh9Ce0rNSOOsUkikmIv8X2DjOkK3F8=;
	b=VFJFtEnh2TXAVoiFfVbja7yzn5866X9yMBevsJ9rMXQ7QELtoAgpq8PDs+hfL/1m
	HAeCFOIHbArf4DCTYrhfHZrHWSZ4YTjnSZp4YxbufGFbFcgQb+kjO4F6oMTMAtTvnku
	Hz/XTQZvR2xURiQZjw0orzCdvtq/GtDnV2aDq6wM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38db84a2-95cd446f-41b1-49b1-8ccb-f7150c294b7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e57f35d6ea3a6c0cb11a9269dd221559f1a4c6e2ab554d91e168a410fcc37b6f
Date: Sun, 27 Feb 2022 01:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645926384

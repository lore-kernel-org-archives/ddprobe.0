Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15B2800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645594884;
	h=To:Subject:From:Message-Id:Date;
	bh=iFByfohm5hGSKcHwRULEwM6nX9uRSD1MXrlVlOA62xU=;
	b=KbAewLgnZJFhJgxQ7n1BLuC5VOf8/qMYWjgzA293Iz5TcIjdN5XHIyMpPuSu7TXb
	AZ9sWBeLIE9KCGGSsq7rZxotaY9AZ0drX6okxM7btXfok2bnT8v0W6gLfxngtKapPC4
	iInXLv+nJ37FM1vzGpSzd5HQxkA27llzJDhAUWHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645594884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iFByfohm5hGSKcHwRULEwM6nX9uRSD1MXrlVlOA62xU=;
	b=e/7sv0Iunhrx6rZlbl7r639eQ0aGMP20AWv7SAPNjr6w2f3hu8FI10KEbEmxjm8e
	fFiQK17DvPhGVh3Muy63k7heJo2SqQAF85uoEfhWRMVrM1vJEur1HbnXlh7CuBPtvIz
	5GPPu1HvOpIyWI0+Tf1PFpY+Ms/15ggIiLnG0w/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25193ac9-b22d0b35-89c2-40cc-afce-7a82691f6478-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e471583619f4b7f1eb8dcb0ef30f7cd383fd8c5d84ab46b39ce164b128ff97ac
Date: Wed, 23 Feb 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645594884

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38745A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646939785;
	h=To:Subject:From:Message-Id:Date;
	bh=xoqs3NJE61U546EhaT2bnL5X9xXNDNNISe4X5v3Vjts=;
	b=ca8Kwq51AHZDS2YsaT4ve/v70hALetN2+bq3rJk/y2QUpc1RpFlOMM9mNKaPH1GD
	CYk0mC0rnyNuqoIMwfxGUEUVmBlo1KtG+4YY5M9YlhTvDXvYsJCScuQzFfXhtM7BIP9
	8eSuLPr5jIwooKrSVubSBQrTbYZo6pVwRp+f2wyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646939785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xoqs3NJE61U546EhaT2bnL5X9xXNDNNISe4X5v3Vjts=;
	b=IM5PHxSVJm5YSDJw7N+nwZsliDXNGpTm9/T4gSE/hC9px3akj9ISjjSH5d8s40vO
	DYlvzmUiPG1WsN0NHTJr9kVgCwo+eysavd0I6ZqRw+KSWs6iTCA4vKsTD/jgAnlfnu7
	WfhOkeWcNHLU/CHObpODLOS0sCETr9g3I43V/rR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7542c608-6fb95859-2393-47e5-aa15-7753a4e64cbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e43d8ee9fb6c3f88ef5f5406d0cb0e1d20b15f67ac4f97dbf456ef62453522b7
Date: Thu, 10 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646939784

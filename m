Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0DD3D61
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645092984;
	h=To:Subject:From:Message-Id:Date;
	bh=W4yTA2Aq2pUImWDMVyGG+Pvk3fTEvCHW+gVHu3+z3hQ=;
	b=UpV9LWOJAF9Rfa021xuD1DR78KvgSRoGRXDoDYxEVl5z51EmwQvPEjiYhIIL9Hvi
	R2Xcg/061TYNjnAhglUH0byUDZEtalWetedhQ0qxnJYGkByzoAT5SZ7YorKEbC3r207
	6sRYItv8sCStSNDdSr5ST87/ceJF5wyIq6VAgj8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645092984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W4yTA2Aq2pUImWDMVyGG+Pvk3fTEvCHW+gVHu3+z3hQ=;
	b=PVUnPVaWdxcAoBtMCk89Xmeqnanr7mGSqbotlEXUfeR2GWlnv0pBLR9OTycTZQyU
	6Xs1NA3isdqYKo5NdlkHc4V3X3n212JGs711JX3J0LBNYETw2Ts3nYjxua2xLMEw7a3
	wLUumOIGKgF8gTCSvTenoUq4N4fTxyw5uutteR4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f072ed801-12a8edb6-9f6c-45ea-9afe-eb620d482eef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a908708b6321065a911e8b5e1a3ab187a15b9a4342d2289fd0d5d32439f3bbac
Date: Thu, 17 Feb 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645092984

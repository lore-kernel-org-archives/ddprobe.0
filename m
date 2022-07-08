Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B412563
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657287412;
	h=To:Subject:From:Message-Id:Date;
	bh=EULwJqs9VPA9ui5/oSgD6e0Y28z8EhHkFvWAvpYCRps=;
	b=ciyDTlc2DBkUgivWN3KV83h4x4n8YDZvs2wQFwy2WqUYS2rvH3Ze+dFuiZ4Cf2rb
	LvD+g7ew4oVsFLQ28G8zwjDFU9hrSs3m9xcjATyDaUb1sW30gOYRqJ+goJl6UNBgLtp
	4KARRvw+Wpws9+tbKTndtMWrGVGMEU790ITZNUGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657287412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EULwJqs9VPA9ui5/oSgD6e0Y28z8EhHkFvWAvpYCRps=;
	b=C/ySfBCPTOIJTBTPmU7QWkHbclZN8LVOUJeQHh694QFEARJ1wDeYLencku9DuJ1O
	oAFhF9tyMWRDx3o6kfuEn/mFciGH5NvxtY3fekoMnXlk6XqWidDFrrpqr45B2pSjKo8
	TgcxzYMYpyWERAcbIlLQ44qjNwk4AcqlK6CbW6Xo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de070a38-e23cb976-4178-4749-a4b4-0840dfc12a9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f390a7cb5c5cee948fb315283875c6f0f56b5051a2d2666683c2dc8e9129f14b
Date: Fri, 8 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657287412

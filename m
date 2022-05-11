Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1990C2F25
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 16:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652288279;
	h=To:Subject:From:Message-Id:Date;
	bh=R2qD6NOVYaDc74up9BXHSt6DC4qxADt4mbMzuNgjVds=;
	b=X7NMp4+f7su7CgrQD3LFhR8vC/oYUeufhgFx8vjX1vE2xCSEzsBpcm+nChEGHaw/
	wBX0/kngfPzubETHJvSUp3pGliwu4FZoRbIjw7vqtvukRGu1yWaXm5qvMsUwTtmnGwN
	PGzojNXDPckEGBCQhHbm5gc0l7FiCjYe5Al/4XTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652288279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R2qD6NOVYaDc74up9BXHSt6DC4qxADt4mbMzuNgjVds=;
	b=QTnI+t+enH0oaUfxTGyG0LeoKdtei8t4HB57vDvwhjJmZFKG21D5eV+HCBwpRPkh
	f19jBWNplmsVaoC9/7iPmIJn0pSbcb2OWUHsJoLeqhkCoP5bLs5XQs9RqNy7O7sg9Eq
	N65OthsEUTs85059SBdm/SJkbUcxLatJ6waxtNvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b40e531d-fa2859ab-695a-44fe-a6cb-2f7effe62e27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2d38033970ff2236e8518318ac99ca6a56b5cef524149b38d726b0fc90080ae
Date: Wed, 11 May 2022 16:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652288279

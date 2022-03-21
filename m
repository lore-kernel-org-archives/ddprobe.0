Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D494289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647872484;
	h=To:Subject:From:Message-Id:Date;
	bh=N3mfPIHiUJRM+2Ju+CoG3ti//J13/NPOg3Ao+N7kW4E=;
	b=JhgWFG255w7cu+XtTmvDeNNppzChdMTFMLLbgRrujFrFQyn6PwzYTqxWJdietY3A
	OYGIh2veP9dl/fK8xp6pOn9kqXbwGUooH1wgu6NgGaECTKRvxXu9+u8SlKJeOuu4Koa
	U/8Ro5V3DPPvD61qFGNlnsAd7Zkt8cFPmzEEwDCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647872484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N3mfPIHiUJRM+2Ju+CoG3ti//J13/NPOg3Ao+N7kW4E=;
	b=gFNjFf0okaKtYf/MCFPc0wH4UDQGJqEUh0Iwnv5emRzFu7f5/C68FgwkU6it3c6r
	VAF/pk5pVnsNNbBrtG3T+lfz/VABVMsmT2b/eQ2YE/CIfRjmcGI/0P1squSfaS6H0Zr
	337WUR4TlOx4BY2DgXz0ELAcwEGhGdC5OA2gK+Lg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facdaa58c-bcd7f422-401a-444a-875f-e9d40510e76a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bed70762f5ffe9a59113aab85e4225c6c658e2e3969ef7295326ee14545f092
Date: Mon, 21 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647872484

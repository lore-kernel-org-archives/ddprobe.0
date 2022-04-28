Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2647B136B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 16:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651165138;
	h=To:Subject:From:Message-Id:Date;
	bh=wvL2fuax4h4SF9A2wneDST6kAE/r1JMKgIEYcZRBPEY=;
	b=TX7eEE2OIEJsmYZFxDz2TW4MFLrk0w42r6CVgqbL1FsjLEmtlXunmBsGmil+b+En
	GMyIEITMXUk5a0sDylWpWVuRRzfRekxE3WlDpj4UFaBLjHsu+sIsGBE8m2FnOFtYiIq
	I3YLszJx4J8dNjg6VYa6S8OaycMWjyFQ2CdZrM4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651165138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wvL2fuax4h4SF9A2wneDST6kAE/r1JMKgIEYcZRBPEY=;
	b=hroZ7SHWa4aYMMxF60RzO6wT617mLfKtPD9P9sm2EOcRcfIGmtuUDa8+D1a/N4BW
	PaHB98A4YkU6zWsC0Q6CRtSiChKC32pXldOtAFfUYCFI5MQjxa/YMKvSzzWYz6xTbYq
	Fj12TZj6j6DSKTMB95m5LS2mLj9uWDhanenjy4v8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180711c8d4f-c56e41b5-c59f-46c0-ba0f-f7c88e791c85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cb030b3d4376ed422a0abd3c01f96498b72cda42ba7d5eff42bfc4f0915274b
Date: Thu, 28 Apr 2022 16:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651165138

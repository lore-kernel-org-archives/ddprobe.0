Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B1C33C3
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 22:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653001199;
	h=To:Subject:From:Message-Id:Date;
	bh=zfdyPYiroU8k9umPRN93Qa0ZP/NdTknhY3bXafPr7tw=;
	b=TOhU7UF/0HX7kzzSrSTBypN5rAilZzko2pCCM64XUWXbmHVK/5LtavUafta0Eja/
	CFXDnSFUkWtpKvzRcAS+yKWhRW7KR0ofpwf+bGj8YFI/4jzTrFh77t1nw9M2Ibk1vRd
	v1xfrV9tA5BkgbW38bC7jq7J0KqIPrKWtfnPFF9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653001199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zfdyPYiroU8k9umPRN93Qa0ZP/NdTknhY3bXafPr7tw=;
	b=EoVV/sUxWC5ToEbZOzIfP5xJpBheY36EpgEoMHZxQSuODiXhkAJVFJ6I0KFq3zk+
	bwD3a2KSXdyM18fb9qHvWavRfp6BW+46Uu8EUD28CtQvcyNaCK5WPJx3oGdNAasJkIM
	GdYPA7L01rXmcLs1jtIUYs+KGN05AVPQNfLCD1VU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de8c9eb0-dee75aa7-1801-40cc-9bee-a6a8d8254df4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aed64a48b09a7e036a601e2e53c3daad6781ac4f7a3d19a0798d666f178f433a
Date: Thu, 19 May 2022 22:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653001199

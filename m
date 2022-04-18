Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6EEA56
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650314878;
	h=To:Subject:From:Message-Id:Date;
	bh=Opi0+0s943Gu47ELOE2lTtvrFAPy962ToaB7JNarJeQ=;
	b=BsnD/W8QxtBozWrcEUXSLMNzs/xXguZnx2TVoeHSN8QQdi58td8pqm+uCOOZgHxg
	E2Bc1FfOJN2PnKiM/bFTkoOYp+nBVWTEHF12JqtgDlWf2yvxXX0GdPLcFTDpKnzmcHr
	K7EOh5OSD66QbnxhNWp7p77TdwTRxsjvdIQ2RYeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650314878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Opi0+0s943Gu47ELOE2lTtvrFAPy962ToaB7JNarJeQ=;
	b=Kj8+pt+ZNCYD3FOydBmUzWyozE1P3ZvaI1Zqqx2Pr78QGVG2nofT1goWillGu4cG
	+WKGWQuKPCB7PUOKFc4ZV9KSHK8ZxGBk6P6knYmq82QDM2FwcfYbDrUxBTjulMbz+zT
	/NLHWPgWD7QJIfI8Q+e55mIARVmfMDgKXNUQPznI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803e6e9d4c-a42fe333-99eb-4e19-909c-e8189584bd50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d2a5dd32afcc2e52b59a35d1bc059b64a94f1f2ee03891fbfa40b77494bce3c
Date: Mon, 18 Apr 2022 20:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650314878

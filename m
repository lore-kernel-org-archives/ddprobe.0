Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4B2ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657373212;
	h=To:Subject:From:Message-Id:Date;
	bh=QjruWPUPfo1cBYod0L9IJEnIBGVEUUr0kDRKsZ8fWa0=;
	b=XADjmWock80Fwnq+gupRAtJPeBfC5OnWIUUfDzA0BlpsZivQDS6MdAj+xoro2BsH
	SvKS2bSdY6sEFC/MqMod55w97j1M2Og+opyguzFI8YYEHA+mVAQy0IrpEYyK8k4Apfy
	FAiTDUGMhDXRjnlQM07SLM7jtHS1ezS/1s59ZIQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657373212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QjruWPUPfo1cBYod0L9IJEnIBGVEUUr0kDRKsZ8fWa0=;
	b=hhoBL4HmyoQaWBNOoCnWnQ74VBZqReCCjFrgJ9qrAQcRyl6Yw3AdPEupyScmJ1la
	IxnycjiTScq1cEvndGuKdAHKUdr7p0Ovgsf+mQViKnQa93uVqkgoRVHBYxCWcXSNMMT
	DqiiVSqufvpheaQlhn+XBeIizTiYR97M8k3IJfQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3243eb9-c7d8d3c8-34a2-4540-a42d-69197d3cb835-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 496b6e8923bd70ac6a8f2fd839ed70b55648723f2890294aeefb89cd011054a2
Date: Sat, 9 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657373212

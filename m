Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F5723AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656776212;
	h=To:Subject:From:Message-Id:Date;
	bh=hiIEMCOGAqqyoA09anQadr/vgm1T2GfRzFBV3bAu9vQ=;
	b=R53AD9rF9nEr+cKG1U8qrn2XHpwx4RPQ46xAyN5R68YIdwX5UuH/lBYMWX+1eAd/
	Wqx7kK/Kk+fsodH2ayYHuvQSPJxIDk7hwnu9e7TEtlBlz2g569CTPpFUH9eAMhq83HW
	ndZGLoG3C4pWh5kqalT6cmrIz9zAPxHE90UCnw9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656776212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hiIEMCOGAqqyoA09anQadr/vgm1T2GfRzFBV3bAu9vQ=;
	b=GxFiZOoECvDl2i9vqFZAUTEXvmtF/HqW5GmkAQargrL0/3XsMUdHpB6zsLyfg4I3
	YqHOkQYdhWUOOaIlaEO/FPoxA5WtaHeJpIJq6ESOnTxzPKNLX5hl4KW4HJX21miUp1n
	EMIM9GWVAk7jTOtpVmeNQBxZUxshbJt26Y1vAdm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf8ebf36-a3014aeb-671c-40f0-bc2f-6efda50de7fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ae9647a154ee9f112ece4d9f05fb606192d426e304aca92df95227fe75466ae
Date: Sat, 2 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656776212

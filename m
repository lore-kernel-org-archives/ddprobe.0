Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168C3392
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 16:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654878779;
	h=To:Subject:From:Message-Id:Date;
	bh=SrzbTTpubLdtTcNX91vvA8W9krnGG5hrzyR1HEfCEgw=;
	b=dyB27tDH8exvQw1K/te2KuSmBrmYuyffZ6lXt9mRr26Dr+NgtlWKbj39dtQC8itg
	LeOwhfx2jNbPijBAMZaWqhzVM5o7EUfSTHDY46dDoDml3xqTBsDQ16hswEsvmWv2+dp
	KMqUcgohFgYAUnUmOFHhsaTW4SuFHf/PWJ/0VM5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654878779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SrzbTTpubLdtTcNX91vvA8W9krnGG5hrzyR1HEfCEgw=;
	b=dtC2Z9H08ayb28tW/nQPkNCHMDtgJOnps0rTJziGXNMTOKFiHkK59+6oXtoem44f
	NbzVGe1uCGjeZ96ngif4XUmDVZDFXJ7gocTXgTVvaXLKqgSuk8KgWgXgZFPMMDmPWyv
	QrHPYlP41lk0oOJG+DdIACxnAC/p4UrQqmrglN1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e763794-88ce93b6-3ef6-4c5d-be0d-e77febb5b44a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f297ec0692e63158216a6472cae43a157413daba8ebed0efb4d3204d10610a7d
Date: Fri, 10 Jun 2022 16:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654878779

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E60EDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655822699;
	h=To:Subject:From:Message-Id:Date;
	bh=jC+2/VrvZp4Le2dypNsT7jDKsAthYlfNcJVnZTMp1YY=;
	b=Et76M8xQg+NrdqahvIVdIbJtY7KyhlZrQpOXB3wS5x9Rqz2AnZM2cemKMRYdJ+AB
	93VElo1eQ2TFILtkwADzsO5ZnkEb48ZIL4pJN9KTV5VbzC+2zNFcwEcWDEOONblEtkE
	o41w34mYTCqoD3IeD9G/UHXULp3iO0s48ChfQPDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655822699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jC+2/VrvZp4Le2dypNsT7jDKsAthYlfNcJVnZTMp1YY=;
	b=MWIP68VqN2NhO4IvCi+QPBD0rmkD/C3vMGsxGerPds+tfWllOu8qMxN+je5Oooe/
	2Tc/7kK/hyIVnjFC1cMu/vg0j92peovp6phRWF/hjF7s65hDDHFlh2vzFiS52rHynbd
	TuhrAfUM77mz64y5i0POt18fZGd19+/IZQRISB6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186b94aa6-55f17033-9807-44b0-b7df-be0240dd3e39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dab27e9e21ef6d1917d89926bcbb7f7520058025a880bdc4cb5c65c139936c2
Date: Tue, 21 Jun 2022 14:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655822699

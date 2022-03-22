Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1FDC75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647957084;
	h=To:Subject:From:Message-Id:Date;
	bh=0bIsAkHINqN4evC7PGX8SIQimh8PS1vpYEyVQZkRp7s=;
	b=Te//E/T4oDSq8YP+OFwR0ffNJ+hHjOfJ82ehiZHMFoujJ7X/bun/SXKoMu7g+V6B
	+t4x3UIpGpsbbYrRq3aSsBXYV0b3AvCHi60V2FwSxv1REvLcTw3VE9Yoldb1jOmSP/F
	V+uVtcnhfRYS4jiKDhH9xWbi9R9JOiTaOfssxlOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647957084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0bIsAkHINqN4evC7PGX8SIQimh8PS1vpYEyVQZkRp7s=;
	b=SxQtKlT2z5SUvMJlS3TRAYq8F502n/0qieWuV8iv3U+Pr+gd4oNYjgLPtTMqvQBb
	OgGVJbEGja9zxLF3Gjr7RF6q44/mnkChLMRIWrPUPEttlFhnLx5CqWu1tdF3tblqZLv
	8JVhqBA6TmjT3kfqLosUJnaQcHRk44ceObV4LTr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1e58a45-989f68b2-a64b-4675-a630-af142daea516-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14a5dc46d42d914b502961dd54bdd00caea2d0f807ee7ff46a85a6f5d522530e
Date: Tue, 22 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647957084

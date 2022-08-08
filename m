Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D07E7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659924652;
	h=To:Subject:From:Message-Id:Date;
	bh=po5kG0wo6RYC/B7aM+Y7W6P/2DoND/ImoNRgSLxjGfk=;
	b=PQlDTLfJQ0PyeAQ/twh08z6moQFdgD5TUnp82p304xE9NP0qI1VT09C5L5SgtLRZ
	/4/dYnJf5Aribcq4X0d8dgKDaKdVQtfahWuu8E+PXGZjILrHobfkrm+9Y6sQlEhA6QA
	+V8uggEH/AP9R8dcKI00GC9IOFuACa0lOA0csv4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659924652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=po5kG0wo6RYC/B7aM+Y7W6P/2DoND/ImoNRgSLxjGfk=;
	b=FdCyv7NrYBoZe5bQmpjS9ADfn2jDbsw3ThL4X85nRzySoG6UGRRqc2Cd1/aqGAEW
	ln7Jv9O2W1H7GI6KAClF1939Zh3yhItCeaISbgB34Ceg4uwNLtMesc19gJHsSdcLzhb
	JlHlmazP6f+LXMH2+Ne+SQQ46A1w5gdUl6Kni+q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b382239-97b9a0f9-f17f-4022-891b-bf49f0f95aaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 061f3d1b029440547d8fe89ad73182d9b212f0e389e4a7e7241fc56dec106daf
Date: Mon, 8 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659924652

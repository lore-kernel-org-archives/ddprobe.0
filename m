Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5710623CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 13:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648216018;
	h=To:Subject:From:Message-Id:Date;
	bh=hBin+GxyMYgY0k9RYg6EkNfYrBBMLAERYHhhx0JeBdQ=;
	b=MPzWNDT88Wi6oPWsKz85z3wj/pcu3ukhYAz9yOVHYMvUofM4qhLpPQfi05TdBkh7
	Le01dBXNS+wTRx1GhHUEidALBcQAFr7XdE4CECkCXrdmiwMDRroSVjXCARerRVLgV5T
	y0HKTBEBvAythvwCvOGUTBd52Dy83SLC6zV2J9KU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648216018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hBin+GxyMYgY0k9RYg6EkNfYrBBMLAERYHhhx0JeBdQ=;
	b=Y4Cetyj0NG8WWEJTJHeQrtPfbPt6PGUEz5yA9v0UmWGIxVtSksL2Ck+zhTru1eMD
	5PdkmKzPtLwYdq6cjc4NEe1kQwdmSYEm7+2GskatYR5FoRwo2xTm3ggMY68dzU0o71U
	d+TlO9uxjjcdJqBKUUMN2Dl+Pr+AYzBPf4IJd2nw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc1548d88-c964b021-eba7-4090-a3ee-a4cbf8e45a80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5803ae0cee837bb5ce4c806c2a26d4a53e06f41d41797af065107398c5606047
Date: Fri, 25 Mar 2022 13:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648216018

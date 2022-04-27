Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3B67B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 15:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651072558;
	h=To:Subject:From:Message-Id:Date;
	bh=DeMcDY/n0BMr/ENJxsNF4M/skEZuMwyY9cEOY1W02tg=;
	b=WOP+zu9iMsZtSBK28bkXyeP6+0DxHgIjDo8hYO2VvF/wSFNBcQa28WTieUmFKN4a
	1uFMD0SrY6iCUdI4xLeMmSsQf7ZJmKRebqh8dkHoJ0FLqp8lBh8UOOCKjrzcT/EQNK0
	gpB1DDeYFtWTGOn3b0hs2mfBfztehyYA3sdUyhk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651072558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DeMcDY/n0BMr/ENJxsNF4M/skEZuMwyY9cEOY1W02tg=;
	b=BFYzVjRxooKUNR81R/RxxI355AR3LDx5D6kt+Y2ohrJpmPDU6ZoaA7NaJrSL7mnb
	nNQgANAT4HQP5C1uI9QV1WriHX05OGdfVLjXqbP9v2GeGe7cV1Ow3r5d64DdDe4RE9R
	UFNikVPG50MaBF4UuYNsd0OHcqtaNFXHQsiu87rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b97e48f-1b004c30-b7c2-41a6-8c01-814711b5239c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5d71bb1f88dab8268c8c57d11d4df76f5876c7ba7e7c130c47a9b5e794a20ad
Date: Wed, 27 Apr 2022 15:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651072558

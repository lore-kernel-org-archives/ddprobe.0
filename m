Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58457A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655221259;
	h=To:Subject:From:Message-Id:Date;
	bh=sH3SJOMqkZoYniu52KhC35sJjR0KoZ9GCatjECLQI08=;
	b=E3bIM2Ws7IICQJEdpBXYdq3Z3XJ4QUhMh34oaxMVwt+AhhpTLSkxa3msIkznM2HE
	ffIzSspmc01T16cdmpv+tmbbmVigOIn+ZkDVjDaSDYBb9hodtQoIYM5p4w5bi65VYxq
	9Ov9rX3zDSAUCkXuHd3Jb+vreYIyEjCntxa6pNUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655221259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sH3SJOMqkZoYniu52KhC35sJjR0KoZ9GCatjECLQI08=;
	b=lFKegSwRmrsEXBQrjLM7mg0+K3pvKI7SNNajEDYcEyBUooHyJn7VCW3wEchBPXNz
	O7G9x6nuzaUsilu3+lTh9KvwBX883QxDJeK0NSnYETYNRT/WqA7qz4sFGkXlZJFXS8V
	4HMRSWrr0PayTe2agN2dGEWfIyGim+U9jLj7aIw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162e00bd4-d26d3d16-3dec-429c-aba4-c319f76288a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6891ba03da3ff4b9e9ede62e239a8c0c491bc84529638fc615092f7429a8bb25
Date: Tue, 14 Jun 2022 15:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655221259

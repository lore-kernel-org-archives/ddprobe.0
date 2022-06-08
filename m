Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3027B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 14:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654699559;
	h=To:Subject:From:Message-Id:Date;
	bh=B7o8TPB9KBg4QwC91XZTkjBLUZHcTc+C2pC69phUQy8=;
	b=ev3TiUblo/zcRJZgdKg3s2HhrSFyHUWbcFqjOipG/P8s8vbY97glqja7BrXbIIeT
	MSteRHyo62tidNQkulkDxh/7g27JAmZwZu2iRAyMKg3VM3x9/5WPojOLhd1bfKbXKnf
	x+9cEegm1np5GAmqiERT3/ChjU4SgJ3ZrLh7hzQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654699559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B7o8TPB9KBg4QwC91XZTkjBLUZHcTc+C2pC69phUQy8=;
	b=Hi8AIS/NYk/f7Q9tY5Uerlfz+TKIJvbbhvsY3oSDkNSr/GUF9ZzMTcp6OI4jVomv
	LZlQVE3g38E5bU5xfCknC+PsSSKkjT2RT0IS4mkVZDyn8omFHCxh8Q+0xys2bTDclPz
	aSfII/T/n80pUgLDvKkcRKblW9bLwSoFLuqG4T1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018143c78955-8e74cc44-3734-47c4-8040-551e5ceb87cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91abbfd7a39a1d548f96d2667d08ebb8356168309d64d9486c25363e52e259a2
Date: Wed, 8 Jun 2022 14:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654699559

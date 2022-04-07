Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12406259D
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 21:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649365618;
	h=To:Subject:From:Message-Id:Date;
	bh=dgZ5tk0PhZrOeVIeZLrUowB8BEyCq5+3ueMql93RDbg=;
	b=Rg0Tw3tANA+zZWXyJgC/1WmmylzqnPEUBlY+Ys2VnPq8C8EI2M9BEI6UIfD9/GPp
	ntXIUUOaWgN4UNBzfPPvRLBIoUxm9fvPxjISrpJ5N9yhwkPXsh+fzeP1Ad8PGnG2aSA
	WuFhkmhXjCkh89U5HANUZMiEjmCtUFaAhrgDWLqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649365618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dgZ5tk0PhZrOeVIeZLrUowB8BEyCq5+3ueMql93RDbg=;
	b=hyf1CjNdNkKC1P0CT99wCgMU+COL+0mccD+N+ZpG+Vx6m74MZ1hwlcuskgrwv1n2
	gxT0KuJ6fJ72xiSqsoZTHkXxHEgrvQIdz43OAlnpQds4OEjyxsrX9nAoYcEcjw3weZB
	99QY2v6QWw/FUQqaLr4q8sD0oCxWQbw+cr2PqPQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018005da0eb0-14b09e9b-2f44-4ff0-8ec8-bf954493fb6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02ff235b856bc0908204c00d799c59f5cb345852a8efec193686eb751bc7489c
Date: Thu, 7 Apr 2022 21:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649365618

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5198F40
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749705594; cv=none; b=Gp0niPLTz/+DYwvwrLZbdcbt/Xs9aSJLtd8jYH8HrX4tG9g8NJFSaC14MBgx7DjFw40NeDQI0fSUuXg7cYuLTmSr/yaQ1NP6+2RMSl+mhfdI6PWYq4r3dXToz2daswozL4gF4LRcpEhcjX0gO/v4ENpK+k9E+z5pGAnf4/bv93k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749705594; c=relaxed/simple;
	bh=UKeQRmDLa9SP6UUHMK5+cxvOXEbsjcTSV7UF7/XWRkY=;
	h=To:Subject:From:Message-Id:Date; b=ryH9ezHAX4XlpqJQ2Bs/j19HBtHHYyQ8vR9GplStxo3WoBkVOX6vNVw6gJkP09I7V3cnzX9fpjgOm1KekoDa9Zg3IHvZKoBsK191XBMe8LpLjorHegVvkzlsJtXjxb8y7CvoyKq6P3q1esAiX+Yqo+pr83/NF7+aG/wOLenepos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSNSgkmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSNSgkmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8504C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749705593;
	bh=UKeQRmDLa9SP6UUHMK5+cxvOXEbsjcTSV7UF7/XWRkY=;
	h=To:Subject:From:Date:From;
	b=aSNSgkmBsn4moXqU2l4NaiQKcZHtXBSOz5KH13rEH+Y9VCHXpuVTQy34fmVnbAAZX
	 /e+xylftCwxHhvCe/tuT1qAxOzgGl3TQDolZVc6qPP9xA+eYacDN4RF23qwUDGHq0r
	 DqFhRjjsgLCOnPHu2Iy/q5QjkCD3Y5/ks8ZayfsRLxJ8HwzESAop31IFg2KOuM3G4n
	 sjgfLmKfLUzAhwwm4rwpPzFMduwVikfYftq26Cqmwn1hXF8n6EaibVRppDgAPv8U7H
	 cwnBtjAC1uHi2O/7c5L5NLmy2XHrygFq682RVx7JrjV3RqFA+xojrpE9+TRL1pi5UW
	 pS1EVqE3pMqhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90738C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970559358.21047.9051163992133446364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4501965374d935232e6424ed3d2ab9a8113e8a33d5398628019a1b330c0edd1
Date: Thu, 12 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749705593

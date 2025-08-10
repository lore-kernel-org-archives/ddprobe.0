Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A964C62
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754840994; cv=none; b=o+C5KcbacQa1sXVkV8XPlYsGETnY5cOOghmt9QgWDRst+7m+P9Rgb7CUXHZUSD+NMNQfE2ZlEmX6TWOS2Bwnt/SCTCZ0CxC5o2F7n5TSi+MDdatjms+4sZMXB/nV7GgSANJuuSC4ZN87y4y0hyqQLtNRW2TXQpZUW/5abPpx0Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754840994; c=relaxed/simple;
	bh=rdwyc9/fqLRe/KR5OZDcXBoKUXu6Yv4b5UiGWY8Uk9g=;
	h=To:Subject:From:Message-Id:Date; b=JGtykr4SQxribb3kptSrW6pOH9lWS5Xbmvl/1/YLAqkxR77ZnR8D2tXxSBtzv7gYdFPhRrTrx0UBSDR18qkOC75tQdstHLRBhZY3iT5SrKgFlaMIfxoFKqURJYZI//6v+fUVwyVRHkwcmmrCEB2NpUH4ZwlbQOaULq8ybQ3TBSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKm9uTsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKm9uTsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B62C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754840993;
	bh=rdwyc9/fqLRe/KR5OZDcXBoKUXu6Yv4b5UiGWY8Uk9g=;
	h=To:Subject:From:Date:From;
	b=SKm9uTsBIZLCxdcmyDvGOpkCJ643rmjBSa8SxN4trmeWswNXBEHAG615nlNcund/U
	 hhTcA67lgfRNCdexz9PcSC+uzEFgBM3Dn52AEMnUp/yixCzKER5EN4AKHoGu8blaye
	 IFg51PxB1VYH7j0kP1gqRKI7Lqf8e7zRLU04ji1X7CnRmXawjdVsfJBQb/2aMzm93d
	 +8jsCETWiyREO4mzrigIGYHmf0AokK1hKT3gae16pz4lMmVnAOu+Es9TeXmoydsJEE
	 OIEzQfA5x6EqzMo+f7idPZR7xyQewD8E7HFJtEcQqU6hIk2FKQCUViCRFcdmfJY0g/
	 DRTF0LamKyMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91417C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484099357.14802.4587754354753445776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56706b7cbe1fc13374459cb7dbf63232a99045ae0c89985f96912b0e0c6507e9
Date: Sun, 10 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754840993

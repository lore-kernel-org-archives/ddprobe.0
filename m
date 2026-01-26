Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0DA315D22
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421834; cv=none; b=pSDOxAr2Q780vWqZ5Hm8WKjnVqn9qmid8ckZAFHbk/O9cvx+V+Sl1UJzrWLsmEJLrNC9IK4XiG4jU0WrrOXqeATENb9eI0Zs0C93Xt1OCG127SHP52ypGKQzAOb1kxDlStsUkePWYKaEk6AF+1hX96XCehIQvS7m9IFAjBTkMmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421834; c=relaxed/simple;
	bh=2DQQgFAImJQbwC1c+oSQZTwMAMJjJVdW1xKnH3x0pTk=;
	h=To:Subject:From:Message-Id:Date; b=YwCCGg83q4SQyfuCpsphphz3XNljB5YkNVpq6GCAcYwqATkjb1MlIS/kIGe05DipghobdLpCByQ5+M+pGDEXx1kJ3O1M1dW58ORwvaI0KuH4TyZHTq9LuTLqEwqljUquTt1b4pKSDOIE8m9oOdKb6a8bWiiCf1OePUGQSh8IXE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfvZprH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfvZprH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61C1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769421833;
	bh=2DQQgFAImJQbwC1c+oSQZTwMAMJjJVdW1xKnH3x0pTk=;
	h=To:Subject:From:Date:From;
	b=ZfvZprH5L0fO2OVipuyS6cT1ZL9eT3PPsAc4YY/9jT6F/7+56neBSK6abYQmHLI7U
	 c/lVxcDMrdRPRm8+9XbAZribR1ZGywoO/aY3RgZUYyUY8KTsjsj02Nw4xaWdb8LmyU
	 km7WS6U9+SYtf4u00t5ENexyUf09v41g6o8lRdSlc0KKS+tPC3VS/3GM79sSJ+XKUB
	 S2SPtuIuFQfg7YgG7VJ1AMWqg5zy0BRYSe0rijt0tedqQI60I74oxHKq9ZDF3wDZPx
	 68ODqPrJ5qWJLDn+fqXtVvYaiqwxs9JP7b/S7B7Mg05qQiA+CCJwym5K6V8grTTTzG
	 eqsghkdJRqTbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C15ACF65C9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942183362.19481.10063572167272600692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66097862741861045ae810fee19d29b58242f623b25c3c0d2de12db2bf6a18ed
Date: Mon, 26 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769421833

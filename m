Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF7B12EBE7
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743203994; cv=none; b=gzooDNhRYuQ8A/0h9AqamB45SIcx6lEqz5n0lQx90f461fyLGNbxvIE+e3GhE0+v8jcHnI2dDdqZfEcSpHZ8dReFM4qCtHCCK7FK0WyUGeHFQ8Kd2yzaRPPpFCdhvTwkWo1/1NpLata7WjdYmn+Vr/Hoe6HdV8Elo0kVugoKqJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743203994; c=relaxed/simple;
	bh=P+Shjnj25dajGn3wce3fXKvwdzMMXByfqqrBT01ZJ7E=;
	h=To:Subject:From:Message-Id:Date; b=MvfWcTgc5WLx8RrZWptar/8Ej0kwrkdZuJOFAxhMUCyJS6/zFbnIDhaLFb4Maxhm0oSn8rqWeJ7PvC5304FCYnbOs4Hrf5hPpKPHhB0T+5NjZWP5625RYC9Lm24ni4TFzR55w09LT+Y5JDs44rrx/S1Q021XoukftyOc7SoCBW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQpaLtf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQpaLtf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F9EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743203993;
	bh=P+Shjnj25dajGn3wce3fXKvwdzMMXByfqqrBT01ZJ7E=;
	h=To:Subject:From:Date:From;
	b=oQpaLtf7ZHaXT7c9WqBvkevNVIf0JXMuPgfBFkPzc66GAD30gZxwZC/dmIOzCh2xk
	 7bOhyI5uqChA1TFDct3O5jL1qLFDzVmVBB6RbQDbIAfQkisUHwd307Lu3LnOVyt1km
	 SVOxqUvRu1m7bZv+d942zPzeFRovJPgKm9XAqgbm9r1Zg9jquDWXFUa3AnQKRPt2f5
	 93YE+4zNDdDoRtc2nUxtddh1QpFcK9Drgi2oQpeWKgx5K3c4IWjddD58Qvr4b/byGO
	 g30Ujt3J+ilvhccL/BB3HDAW8Hb+osRZbUw5cInGvSRioukCjoEXegK9yTjOoEto0b
	 oLhPMQWfHlQ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26A3C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320399364.3033.2777568535699684252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d1697ee33a47a94177807859db75103ddee81263a990756d8b22e0d7ea4556
Date: Fri, 28 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743203993

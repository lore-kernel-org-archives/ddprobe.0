Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713B13DDAE
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747993194; cv=none; b=Zb4eb4RPqxqE2drnWga40fRvT+aQxdF23S4qHeBTRc8wenKDh7hUkFk4y3fibrglBWW7cH3A7kTTL/5UFazT/tJbHCejKP0LwYoHpffwtTlkRGVPZMi+lgm18rTLlEpfaIBrnhKzbLqu9eFJy44jt3X+jQoSMQpsH4vBJpqYkc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747993194; c=relaxed/simple;
	bh=nc9RiCvQ4jyyihdbfrr3poXF6xphwfrlBF5c1i0Ysew=;
	h=To:Subject:From:Message-Id:Date; b=HbxywQyMRS5LV5KAehbTV0D2RqZXxQ9v5/hPQcrMLNRko0f4ibiSJhFVnXZG20r9rlVFFQW13+k5VG6mqSyi0ZCdqQRLXLrc7h+qBvZUAOotLy/BB0zC04geXgC/NO1Hcs6lGnlyxHljpUv1B3AXrUG6wyurYPCO459Vl66+ioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLIqwVuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLIqwVuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747993193;
	bh=nc9RiCvQ4jyyihdbfrr3poXF6xphwfrlBF5c1i0Ysew=;
	h=To:Subject:From:Date:From;
	b=JLIqwVuCUBajc2i0+6/pilI/dLM4OYo8UiEXWqbxIe6P2/3PVL2PvV6Za7qhUf5xW
	 T3rfFr7PNVuQ8FOFuy8YyUHrx3arIrKpXDjJmwy32Ts2sAyU3TtO5jUd17FTZMXH2J
	 5ucS2r8eHD5ZF+qItVPq7UWBEvwEAJEc7yQeZnu7MUZQIkwxEGUFD+jzsx5MQV0/Za
	 66xo6CDA+85g8GfFLcyA3Ns9z6kBT4EPQ9P29ZSzQvP5q/ZN7rvvncVzU14ZBq0jAJ
	 GP25Gb9nW8/E0Sgl5R3GHK9c8dFI0blz8i+tqj8+zE18qqA3KponXAnpdWDXg7/eE8
	 3VDbL5N7kGBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD2C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799319357.8390.4490961007132226769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c210df1f3a96f5beaaf05bb049f67c9183504ceaf028d87f0e081ec37deaeed4
Date: Fri, 23 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747993193

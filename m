Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3287B2D0C72
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783381114; cv=none; b=Ql7mivyzbSr7zJ6iSh4fBAgfIO9J64vMJUAMJf88DFZ80tRYGHfMCo9DYTVMnSsz3O7p9qTq4d6he4mZiXCJcKOid1hvGe8KLQeB2P2C57CAQf9xTiYGiOdwmpbOBxmMkHFoA/eWL/rO7WvLF9SNkXr23dkokoW27/si521RX+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783381114; c=relaxed/simple;
	bh=/qstMWA6VjaWF+EIeAZGYz/v/1c4RvJWAEG2hMLq/Cg=;
	h=To:Subject:From:Message-Id:Date; b=J8O8TMaayJ+Ky1sidatULk8GpVaOM4Fw+au6DjGoKRbP+zjHAX3FgHZT6VC9pTflceXMTLmoOiAyqx8Y7W8/yE/UrW8Cpz4mE7XJvyLQwhrPd8KnOaOBuoQipV9WUS3gLY2YwjP9JssPmGQYu8ZMcXm0mX0Jvq111xfEPON4jH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egu3m+Je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egu3m+Je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA604C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783381113;
	bh=/qstMWA6VjaWF+EIeAZGYz/v/1c4RvJWAEG2hMLq/Cg=;
	h=To:Subject:From:Date:From;
	b=Egu3m+JeI4asY/4CVcotrQtcOXtd3YakMxyLoh0MH/yn3HUupwSw4f3TgnMJZxiF6
	 Zwvqt9Zn7ohzftr1Ur19QSBjPV08JkfFtlFrIrEKWxeWO+XEnv1FsP99hC469EXGzu
	 /ufYkAc0Acka6ONpcPZuddR+ySBcmHMirX1ELjQ+3JnyWdUGKMsGAES+9PzOfA5cr4
	 vIOIxi0pjRTUkofsQTSZW81DTiQ9JMnvhMfuWGKcsdnk6RDdTDnB+BUuFmEf1EfWA0
	 hWxvCHPexhcEp7uou9/Djx0xViQyGTk5M8L6GFbin4J9Z3O9G+oyhyAqI3/Ka7B30V
	 4cUegYFzV1vGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A7C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338111368.28706.15130471128697636281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0107520cef4222e382c5069b3f8a3ce73a18cf314b40389658f368b118b980
Date: Mon, 06 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783381113

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EAD23AB87
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782532114; cv=none; b=cMcYBNVaKO9WmnfZs54FFmeQ4r/I0jceBMIyu0PEhpKEcJs3NvhY1cyKoh3AbEEk3SBzkNRl2kdSBaWUYqrxXPDDmlDbM3PsJerLgei64rMQkY6xuFhm48mcZcSzJqzhi+pIGIJgxwe8gCWzTcOPIMTLSN2SGGLH+6WuNbJuyB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782532114; c=relaxed/simple;
	bh=n7lgjUG+zHkJLBD5MRR1wtz7IzQzZTVgGSDKrwjZuIU=;
	h=To:Subject:From:Message-Id:Date; b=eB4jdQ7SspqoSBZwx3z6jGxclAVOytPMW0/oexRO/qJrUlJ99h2RaGlC4c7JfKgjgMU24EFPPM5/gI0V2kuzzHKD6VdevzifrsjNT0t3432eM0d4yeg07bZEzVLWxKZuSgBaELhOhrJZDEweF7SwrraB7XY9Z7QDiY3nztFjEYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgSfiY3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgSfiY3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75B2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782532113;
	bh=n7lgjUG+zHkJLBD5MRR1wtz7IzQzZTVgGSDKrwjZuIU=;
	h=To:Subject:From:Date:From;
	b=fgSfiY3X8Gxk94Z3Cq9Ii2F0XCwr+8tnsKjtzHFdW3r5NZDCBX0OWDtTkq2WIj0io
	 nrL11sgPnoOhqzxRytgNAukB7NHiM0eOiH1Z7GBqM0JL58NaVcq4uXsKliiNfHA4QQ
	 kZvP6ofY7EqWaA3WJdti/9Zbc9Gw9jud5vlNXpOWDuldJk5zAWJrX7eQSQ8xxL0T2H
	 O0MIDZ1tT2G1BMuIw2VivEXKdrU+7eVPy/WcpzQ/7WKUTqTYJP+GDwG6TLXFj/gzv1
	 qdYtan2LiDlRgsqZtc3N9kP7DXtcOI9EBZJcbDu4rSmSfKvn3NtZriOi0NTZmbEH7A
	 FxoLazkCx84mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78ABC43211
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253211374.23703.14056898838185710831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb892908dc67af8ebfdfc13cfa01e0dd3ee31490b444f30ceaf95e46378f479
Date: Sat, 27 Jun 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782532113

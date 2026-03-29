Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22041285CB9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774763094; cv=none; b=USkYUnPsRqNDEAbwURgeEA+JE8GErI+i5Jn5lo7rnQEgQ2M1WLQm8+3lf/vaiIY0Ukx6aquB8zVNuug63jfY+Z/MXqYGN3YwI9BBsO8ABMgWDhp4Ol3QpSzZqju7HHFWOmqBMZQB7PeeoRaC7M527fz5GZDWZuS5DzVIWjhdzHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774763094; c=relaxed/simple;
	bh=XIDFhowog3hXXDZxWqXBPOot2CHQmpXFe8mP05SDyQ4=;
	h=To:Subject:From:Message-Id:Date; b=P5E2hQJSeKRMbgLmhBgSGW4cIcQOYnClx7RIrwJwZvriF9EFOWtAhpv92Wrc10Ad0/aRHQT3LqLhXPjXgOmi9+CnpC+6L7X2NMP6pRvikkEcnor31mq2lyp3tXParCtYtogipvmWTfTqgfCNOqzYbCyHl/E60+3SMF23q9FSX8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ue1oB5VI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ue1oB5VI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA577C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774763093;
	bh=XIDFhowog3hXXDZxWqXBPOot2CHQmpXFe8mP05SDyQ4=;
	h=To:Subject:From:Date:From;
	b=Ue1oB5VIHXZguuvhQgsaXPBmAlCdv0OgEP6p0x5G5w87N5TG0lR7+y7s0v2/+Sgc+
	 J2HqWbDP35RMbNHLkDEnHAKhGu5tONALf4BKcpxhNGdtBFynRUMBHRqs9z/jIEXcOp
	 C7DsAOnNqucsI9HpXFxTItm2H5rEac6DNEINAuVBoloceWm0SmkfUpqjTcBZmU/hZ9
	 nXfwfRnmMc8H9wJKjUu6Wu7bPtDwPRSmdQvZvbbcQKjF4rWDUjEZxpLsHfXBrBTeT8
	 bu7Ckb7XLXBpwJyeJBUbAVrzk5gH9JdtadWLG28gq31mVZqipgeuWFj17NxZscl1FX
	 5216pJt8Z7WaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D6F3D5E5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476309358.24185.294350119497151474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4e35b1377cc9ff0da70b3bca21e1846b237496a0f44990ce151656f0cb93c3
Date: Sun, 29 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774763093

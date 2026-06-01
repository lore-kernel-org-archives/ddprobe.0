Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E123BB668
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780323874; cv=none; b=pUpSrclIUQOQjJJyV7MUhE/6i/nCn/dyH6HvjIAHc0szFrRBebGw4apzhBWd8v+gOIu6F/kL5rVs8OvVmLRIRdVg+IWCkO50Lnn1LunyOc3KcSfgIhHrGwRD0iktL5VhFMCICGyWPl2Q/FRrHtbUzqBTGzhhYEIMY8pdWBnI8Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780323874; c=relaxed/simple;
	bh=wxHCoWdnbSL8+fPkZJk7wLlyxKQXYK/Bx3YHfOb+U+w=;
	h=To:Subject:From:Message-Id:Date; b=B1bp2mzcPaOHg3jz4U+gCnWsjE+4AU5zeFQxgoW4KP7U0FrNDtMVQc0c0MpFGwfLlH8zk9YangcRmCvWEvRIQsy1njNy8vX63s1AMMApYFflvKbybZG+hecP8cgYL4VEoo74cXibP88FFx657j26RRUNPLhPJLP3YX6K/FgtAGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3m8KjYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3m8KjYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B88C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780323873;
	bh=wxHCoWdnbSL8+fPkZJk7wLlyxKQXYK/Bx3YHfOb+U+w=;
	h=To:Subject:From:Date:From;
	b=G3m8KjYUieh6SvzyQ34FKQVHmCyN6yMCh2qmcejo4L1nl4cnr02TWW4Gq7KzDtkXs
	 Vgj8h3J1fbsO1uAgFBdTHW8rbqM59/xrNHF0cTquVHC12XnTH4eXE70TSaSEjeGxqq
	 ThSNCovbZRLrn0pqpIdlo02Ya0/AsP77J7Rnmg31LGUKSXGWjdpPiVOwBpJKf5n4g5
	 1C4qJrcVVZXUH3xuI7S/VZqMY3rTElGB4LBjwETZulQL1PesRoYEtq3DMj1xgPfZA2
	 tc/Bro8MFbMu87smts44kT+D7Lgp+hyIGV1XHupg3j/d500R2n3+haXHR9TJY2bEuK
	 LYYHgwlM7fePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1485CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032387371.903.2428493066170109582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b542b23873fb4a908334f35412f67655fa058aecf31d2083677c6724eec6fc00
Date: Mon, 01 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780323873

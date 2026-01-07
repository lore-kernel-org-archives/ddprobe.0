Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFE13242C2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767791634; cv=none; b=tHFiCv8LTa0h7+XG769W0vRKnl+7iot7OBoOskrGW53rA8qyajo+iscuvM0OrvAYIdAJLJWmkqRfvMw8DhWpyNUI65k4iqZMBRJyC8Vj7GPOl7Zunt0CNnJHX8zi3Br8mGoM735I+MOGmfj2b7WcTzXjadZFbgyzQwFHDtPCHCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767791634; c=relaxed/simple;
	bh=bVwAc9+1Cq1otX+PVAXtfQVsmTjlxPrHPXCiGoiqdiQ=;
	h=To:Subject:From:Message-Id:Date; b=cb/noBar74cOEJGFoO+U20BhlQ9sboxzsv6E2UlrqyDfLcBtkUFnNFIBEpl3pykIT5NPD2RvlZORQt/5gQwDB1YVjWtJ7r7GiG6RdcTi2JKi3M7ggCdHFVYl/8v3IYiWH2pytLALWIi/2DqSMW8mWmRD6eOtKCI0r6/HzerhzC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+q3HkwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+q3HkwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767791633;
	bh=bVwAc9+1Cq1otX+PVAXtfQVsmTjlxPrHPXCiGoiqdiQ=;
	h=To:Subject:From:Date:From;
	b=l+q3HkwAbABr9iq9eK+xm7xjV10OA7FX9m9JxFTrgNEpTPlRyy1y4St8um4Rnxfx9
	 NHmFdwUkNVPWinU7+8+dKX5RCzol4U+lNRf8MVJgk7BfH5T3V4RSQOFP6dHOlfneX0
	 XG3w5SvXr99Lg3n9tVcQJasmixn+r6l2EJYSqi+OMj9FWQTHNHj18V/klYVvWzYDuw
	 35jluEOt1F7Cq9ytqSNJNN4joVIcMUK/GfJxGNS+xGNi/9KCspXnEyRymb5s7L9kmF
	 Ok/4srdME7WzRe7vbvSGKpSU1ELuhhxrmVL3k6/8KnmHGQbKW870vlnr2BoOUKUIen
	 k4TxZwfXHgBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F882CFD62B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779163357.23414.2708513141887950252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a451f3299c1c744bb4ec9e24d70b087ce024faae69994f4b2422b864d0e92343
Date: Wed, 07 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767791633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C3213AF2
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759790394; cv=none; b=BhA5kXVKS1DdNk1S0IWM95OVrrLS/bMXFg4kHEPke0zbZ0/VhBLpEHkzmwbm4wrPgFxmS8a2sfp5HRy4KSbWiPpMh5C8EjRmiuOyg1zpJl1PeHb0xS57k2o+2lAVIXbpps8Tw303KxzHTY3jUm/JFFNjmIrdS/Gu8AmyecxJtjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759790394; c=relaxed/simple;
	bh=n2vz9oq4j6Hl8lLx5CrFqS8Z8BuiPtJ2xcljjkaBvts=;
	h=To:Subject:From:Message-Id:Date; b=BMID9SaVfFxRCjrghNBrJLWmU0rFydIM7tUWMnDKYObL3ADOdQSG6J4ZaiEzNfJqkga40hARSMWcAqNdFqwbPfl9h1NIJqpYNgQKbROwgOCcDtyiC7HRc0JFbGyGCpCaiGTLIHWXs7mncEpbbvdU8ByIHfnOo6sPYbt+8+t/9KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlZwapDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlZwapDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A16C4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759790393;
	bh=n2vz9oq4j6Hl8lLx5CrFqS8Z8BuiPtJ2xcljjkaBvts=;
	h=To:Subject:From:Date:From;
	b=tlZwapDLStQCsmbGFRkht03XmHivcpAmSt6av5w3i1iOi+h6UR0n7FvpryHSoefza
	 RdhRhNWefzL4wvlG2i0H4UpjwWW2V1LedWfdCyQ5eUax1d5M8vCZsrZlimYr5Q7PkP
	 lxuPrWeOh9i0hXI2LGK3VwaJQkAK5N9mXfInk1P3ExTY90vzjq98pLlkLg06SyDc0t
	 6CgvMdZdMIvbXRPt5GsJEHPcfTbBrbuQJ8rjveOYVnM0DP1enPv5+sP9MrQeJObZqR
	 sxTyhf8vegGbPsw7pvDTW89Tjrg3UL40drO1Z61RC2cn6277FHvCpnVmE8uB5p/27D
	 Fy1s+L9k2HHDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F380CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979039357.20590.4912825583560950608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a4fa7fa98cfe70f3dafd6824025ac18a2d266e943404fca34f579127caf905
Date: Mon, 06 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759790393

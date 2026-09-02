Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0408B411FB4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788384036; cv=none; b=G2Oexq2bjAyr0F+LF535Er6B5iHLLYBYbUaqHi7k3BrYbILRY2vZ/+MO/uJQ3sMBYYD50ErvR0ZHlGeJXdnGQtyisx6dHYfLFcvSBkWhZw19NUP/MZZedgIZUMiWxXIKWYqVE0PuC65SoONVOW1KxxIzp206/ohNP/gpntV8Jcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788384036; c=relaxed/simple;
	bh=4j+wRP8WwVx8GG7ZYjBVas4kdthNWTHT3lL4Xvt6v2Y=;
	h=To:Subject:From:Message-Id:Date; b=AwDpClbO9xNPMKXjkREuj5Bd3KnSL3hnlC1aVQ/lMpDPlT+dikwlKUPIjyEQZIdNhJo3p6rPxbsFjIXl4GpOBlzMszTBfTqEPZiCuvc7Z2vPiaScxMIOtpHTCjRFYEgWqhhLHBJxII5r0pIDIR+v29s5jcj20QWv8ogaaqBNWPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buR+9NMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buR+9NMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D6BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788384033;
	bh=4j+wRP8WwVx8GG7ZYjBVas4kdthNWTHT3lL4Xvt6v2Y=;
	h=To:Subject:From:Date:From;
	b=buR+9NMdEuekfWGOF/viZ7Q/axYf2fBjPztm2GGXcFO6k3nMRkoR/MhGsKdxmh/MR
	 DYcBK10D7gvlvI4UamADM+DsT1DFeIXjuOnPJ/rbRilJ8LVO9IZV8YGAE5ozcHb0D+
	 utO7b4JraC0O8Jv7OZcOB8SaTffVpPfVH3JyxbZrOcHQmz0hG1ejZur5wqndaxpn3K
	 wNFQZ6YP6hzuja74y6TK4cEY7DSPR24k4gz6B2U/8YUhJkkFU+O4aj9wizs/CjFxXg
	 BXH32pwo7OhKHiccNVW850hNM84b/AozcmGVHDAwpnHPKa4ORnjhBhpT8LXUH4c2dq
	 0hliEirgkgeNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A9DC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838403369.663.6798855098152337038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a273277ca4a0c264a736bf48fd250185aa3b646795cfeb8ac2cdd523cc7764
Date: Wed, 02 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788384033

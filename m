Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D1110F4
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734325554; cv=none; b=BA+iKARFimoqEZ4d2HxOcwf1268sOHcJ7/WpuygAuoAy4PLgsUw3qe/p4xaLU+G6q+9n5ZazYaf8gdOAbsK04qq0uDuiYye6qF/cmo4aT47Kcvm4e9Iy6ayESlU2iI7EE4mgnHQ9AFSmvBgTVtfV87pMlDPbz1HG8zTkh6hFrr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734325554; c=relaxed/simple;
	bh=zVN2m7/70yjteiW6X5en7OjG5Jze96uRU97PuoVDexA=;
	h=To:Subject:From:Message-Id:Date; b=Q0BQGHGnpaOvEITONtDkGBfTb2N/CZ1Wy1ChA1xIaoQ3jZsJXbEqlEx62W2lgWKVjs0J9daBGkq92E3w/7tUTRTB6+TSmRARaQqPG8akZGmm3TJuO8XCLRSNl7u1h7G1ELKs2HVL0TPMUw0+4f5/BP2aWxlm7IwO5N8KEE2j/po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSKqJmCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSKqJmCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEAAC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734325553;
	bh=zVN2m7/70yjteiW6X5en7OjG5Jze96uRU97PuoVDexA=;
	h=To:Subject:From:Date:From;
	b=CSKqJmCgBpBa7Dl++HiZypj1TbbDxkn8qIv6QxezOZMfRSTzTsL+rGSjJWB+uOGgE
	 z9BEVDYv0Y1YxzeFYEoMcaWHvHVenbrOW2pavidX1JIM0EQ5VwG0mE/ysN3T3wQzvb
	 JKPp84jF3rRb/+uefYEu40llse4takUP6h8tji60x7PpHj7C0nT9+e7+bmUdRu+tZu
	 zC9esiR+TMHE3LKrjXG55XknrK3DULBzEe2dbxTagKOPA/T1H/snwtXeUnqBB2EpL/
	 c1kEY14uTHUODXg2xZmmyJbZeLDk7if1ySYGJHAWkvOoYjEqE6Tk4szEGGb6L4kGbQ
	 070V/mLWqMDsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C9E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432555359.14013.13457356096553106728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6ad9e49aa9beeb190a64be1ce9f02461e1f0382d1120299c032167fe604391
Date: Mon, 16 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734325553

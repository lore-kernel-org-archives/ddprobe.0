Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1325023A99F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774822494; cv=none; b=biIPm8LGA80EiBq6SI50bEtRz3Uo/ZdWJfaZG0L6yOexLvdmTM9ukNZW+ZWlchbW1u1A0TmDb9erlCqowmzZNVs0dIb/TSmYMU7ZyRxrJqIE6ppEGbdkIggpE3WU8Nn9lwn4YueDAwUiEoV4d5ZbrwdM/PeI8OHkPh7XahQCOao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774822494; c=relaxed/simple;
	bh=0wNrwGxYechX5F2hDjRcT7Ra1DcvjyrD5JVuoxd2AuQ=;
	h=To:Subject:From:Message-Id:Date; b=Ru7J34utLejkbih/lTE1Jm0jQ/Zbtf6f9q/indvqzeH0PaTQnpITLHG8mx6cmGhq1taes5SYTdZixXTCvdjVXYARiM59lvHQ4HO2FM0IYFtI01Rm+3T8mbWIjHbzCzNHbDnzEVIXrANl3M4YTQOpo/2GwIOEHgViHH5kNs6wbXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhrbWoCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhrbWoCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EEFC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774822493;
	bh=0wNrwGxYechX5F2hDjRcT7Ra1DcvjyrD5JVuoxd2AuQ=;
	h=To:Subject:From:Date:From;
	b=LhrbWoCYzLnu+j8ULsiwIXX2EN+yYNxi0bQ864TtD/iOYutjPh+YhiIjbgoLupkBa
	 tcMX+OPA8oo2j2P1TnkYrshAC7jcOmczJIsNfQriFnq3jcRc2dWUsRbvNSjr0h0HA+
	 upQNIuABf9OkmBOjNhvVAB3SCoSQHygndlOyIyWGxZJZDbiM2yn8lxyO//vkiQ2eVX
	 L9lk3KISiXD+IRvizk+JL3Nw+qd1CEzlcBwOV505CNq0F7PF4Z4LUQC/vlXKoUKZ2g
	 6+qgwDgLy9nWKXrINTIq0p94SWz9S+ujVnqkofyJ9U+3A2Aw2RxoIFlAEXGto7avSy
	 TTZpXfm/BX6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FDAFC97F9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482249358.17507.9220221503330526382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d066fdf1cf13378361273a3df41e1d329c39361b88c73481f34a154933be6b4
Date: Sun, 29 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774822493

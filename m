Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1701440DFBC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774316094; cv=none; b=G02+MshgRgp8WjY86CW3SYtNKu0tUgOndZhGUisPHhgg8dxORFZSPTzkAu5SxZxGjEHDXy7CYGEG6zJ44DHjeScGfPk2h2eLpw4yvatk01sopVorLqH7ozPec7lDPfAObw78RmzbsJmvek5X/Qx0irNC1m4gjMmXNgXwIZPIerE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774316094; c=relaxed/simple;
	bh=9sCmJdTCo8fq/RPbqfErFybZvf6lM5gsaTmoBn1vZuQ=;
	h=To:Subject:From:Message-Id:Date; b=ezN0kIcL2gKeGlhil8n3Oc1C0i6iRnlfHit+L5Uug41rOkShHJMFBZPL7+jq0TLqSp1egLnW5kWzjjt7BRDn0ld9munUU+hyFsFIUCypQjGCO5DXFbz0AvtqOXvx1/R6jzObxmG6e/eUBfF7iMJfJdrFlQZW5E+AbY/XyZFj/tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7/I6lXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7/I6lXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA282C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774316093;
	bh=9sCmJdTCo8fq/RPbqfErFybZvf6lM5gsaTmoBn1vZuQ=;
	h=To:Subject:From:Date:From;
	b=i7/I6lXDweJRR7RffA9k5KWxOwuPmDj+oz8M09aaJ8679KIxt1/r7gWfEq0Drt2SP
	 /Vv4kWiSPgNEKL1TBVx1mGqxgVHkfEqE6Hp4XhYMl+tdxyfdqF2UaWf16J2N3PHkrz
	 kOtV6g56ywIp4QvwYNLlATsYvP1APAN8G51UoX/sbVPbbHhY1+Fr/ItN6jcul72fX5
	 yrLgWBGfZQ/zH2fZtSXPPre8khRDYkQ8w7tSw2Y8YNQHaC3p3AvsZbXxGxqJsdaCEv
	 GaLR+4DthIwrcYjX31dtlBzQzeAUCtWUsoao2hOgpimPYjuVbSvkkxEr6HrV+zWJ2O
	 o1gq+ulz4gc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9680AF532C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431609360.28437.6498831285718699308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a921b4d7d41b1176ac6d3074f4a1d8a9f10978e041e3c478c9f281404002d0d
Date: Tue, 24 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774316093

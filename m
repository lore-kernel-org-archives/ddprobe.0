Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D37828F4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756053594; cv=none; b=RQdLAMXmgz8q68ewariTvF+6Kh2DwXzTJXDnTlsg5Uptjd9GzXjeW7MRN5hkAoB8xrQkykOPZim4BAiD8fz+DGvbwXgJHkMI3kGkOiVAdvL1FQU+lVdY9WlcOK2XQbJEcUYbbrlwd22nL60X0Gvbk5sRg/EAftgMorZQsNbIOIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756053594; c=relaxed/simple;
	bh=Tdjl1W2m1DlDCZGjg07BSUNv5rboEVZ+hP04SV9el8I=;
	h=To:Subject:From:Message-Id:Date; b=l18svNalIXEGoS/v7c5QnY4CyBv5x2n+0POIqMhX6oNTMpmriMybvzpGSl4INXKs4mwTUJhYU7ehbr+8YL8ijEJAz5cDyW5x7s9pf4lCMh+/M8bOMBZvzNY3YEU4aAtHFgEiU9dTkPL43j2iEb9woybMBtRXjfuUmLgFuBUlbvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by1YatGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by1YatGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FB2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756053593;
	bh=Tdjl1W2m1DlDCZGjg07BSUNv5rboEVZ+hP04SV9el8I=;
	h=To:Subject:From:Date:From;
	b=by1YatGRVHoQsamJiC3TT18u/ROXS1xlWe/hN/XGHLi8JTbR+Aaw88nNt5iwm05SI
	 YawVu6Cl8RadV+gJrOS4VAq9yd2SB6hgWnMpOMFH/BawnTMzGUOoMp40uUG9on1RkL
	 oG5iS0wTmd041PyAesON7LCj+GMfEmU6jP/XP92WN6rzXgbBMzT/pb0qL2CWrRJvu5
	 fzxRQRp+cwzC6oXmI5M0p/9fl7b6enkQXwnHuwQHt6jxIlKyIKPOvHtSpfmxfi4qfZ
	 c1EbExpAIExJHmTdh1UrbC5Syg455UGr7bzxkk44uK6uG5/kQa4QHXhLf05uNDkehb
	 LyWkhHUmvh1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1BACA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605359357.27003.9268532557344037224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a131edf155f198eedec2c42a5665fa6052bf7ff40fb7bfccd20f3523e3e8eaa3
Date: Sun, 24 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756053593

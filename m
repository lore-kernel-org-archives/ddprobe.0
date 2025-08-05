Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E4175A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754374794; cv=none; b=bW7A+EVmmUd8sjDbtFjjEKJSdJY7mCNG5d3s2CpeWQmJswigiueRokm259g/hk9WG4Hc24H5ftpKwJfZYOdvGVnc5V2Qd24nndUsHnTXgyt1TCurdW0Y+saOGXMrxeZx2/2zRAgxm7QqZBs1OvMymO+2U3puvWSsnLHHeGF+R4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754374794; c=relaxed/simple;
	bh=Xy3jbOdUEXSUcmUs0xO8g2oeVLQ5OCuAnjkDd8+ZSHo=;
	h=To:Subject:From:Message-Id:Date; b=u1YyuZFJczTnIe+00P/tC6RNxdaGXIcjWUqDvHwh+cLHixscQaKRfAwsCdOA54qeanUaZDYsoePxYe0FMlFUsgoGrrHqup3nJuk6pTaS0+LEPL77vpJ1ouY+kD2QsR68jGbJM9e1p0wbG4EzRVck2ROSfj2TvhaUBAZBGpRAxA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM4nVwEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM4nVwEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D984C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754374793;
	bh=Xy3jbOdUEXSUcmUs0xO8g2oeVLQ5OCuAnjkDd8+ZSHo=;
	h=To:Subject:From:Date:From;
	b=dM4nVwEvJ3DNIwB8Q2aSbzcNdT2QzwolTc9zHNEQ6Tgj1cfqquC6I0W6HPlOr7Hm3
	 MLSMPlFOUBaMjKZfnU/DydR67FtFsUQ/njP5DYNs6hOicksXeItfGgW315h9Ky70ay
	 0uKPi1ERy3iJJ7gEDcnJ1MFu0foARA0orpSRfTxQ6/gra6X9HtYIi4T9Y7808CoKbj
	 74hzWc4jivnXV5NA0Yh6SJMqsuRJ9VgDEXysXBFRVDXNeoQmk4pBtlRB9cVMDHeA72
	 w9+Kt8o/L3ngSpiVxsxpTiXjrQ78jkmhFkQIh7cfr2drqEU/MbG2Vuuet+2nBolh5J
	 j3EzhFudt/nWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFF4C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437479357.1398.5183839813972390385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d458858186794923ae0def09b49422bbae03c6ff2b24128251bae0530980c43
Date: Tue, 05 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754374793

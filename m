Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19497322DB3
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756402794; cv=none; b=hMjMEA0ppVqPqv83l7wd/gfQXwPwhBiPuv7ygTLvnq2NWjBQ2yLf4sKkIEc0agc87sBoLDXqA77jHhWKOtNIyghZMHgknHNor7GlDfbg25iFvf01iiW3DBY38t2P5iDoBQb6tzpcgSfqgEdRAm3dtEMTpqtcMfgv4MJOibuEVNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756402794; c=relaxed/simple;
	bh=UY8EgZgJjZLUg0TDgu7MNV+jeBoA3GvQfI9ekaEV4Ys=;
	h=To:Subject:From:Message-Id:Date; b=ax2YR9bUt+8pxG+K7h2+5BCuTdfSyCe9O/57j4XSTYCP3EXtCu9G0/fCgW6rLTzAfRu7fsWbEROVrukRF7kdaNaanM8DADuqiWDiI/3NZGPv0ITmkYDt5pd7YajgA9/SQyqcvrka42qIWfyjlS4DhK16w1qYHfUVX3Y6nz8923c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7PODD5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7PODD5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A80C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756402793;
	bh=UY8EgZgJjZLUg0TDgu7MNV+jeBoA3GvQfI9ekaEV4Ys=;
	h=To:Subject:From:Date:From;
	b=u7PODD5xOFyLZULgmqU0DpJ9kFmXMa2FOKPeL20vfgDg0/1tYSddwiLO1npr0myeG
	 ERTegVmL0/FL6f5hrAtp7kGLoahxEoLBxuaGF9XJU6fDcQZIa4nAyBHeg0HR3HCWAh
	 27VQh4A+XHR+knwoqhPm7PApX+zIYpSbNk+mTF6/3eEN11qWtFRQgRPJ3vqfNHW5F/
	 oAVKyGkVPRF+yaxUQm7ejth5TADM2leh86Z0XcKKzx3vZTUwm+ImUDcHaF0ZzJqveY
	 OqIQwNpI7mlPLSRB27WsDrDOn5g8mch8ZaqDTB81fVaKn1WHTlyOVd60PszB+N2mfu
	 vRbLwTcXxWYLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1ECA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640279357.19441.3150022932803584529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bda46b1189bf36c037418b49ad348871c8c8103bf7c49c49f9dc7bba901d89a
Date: Thu, 28 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756402793

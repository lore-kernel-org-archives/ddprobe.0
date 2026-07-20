Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E531C695
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784523514; cv=none; b=f574TK0x7cdIKyUXSrU+dPtD292ySdojMJkcGruPSkGGPyIsjxa5pXQmae5CjduDKeawZ+MnZCE11aFqcrTy0gkH0X22xjaqT+lfH7BO+gHX2N0TIJpEHpTjdh901/kYRPKVyUa65PxRqsJGUoys9WlJ3xqbAqsiGOoyiBiTBQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784523514; c=relaxed/simple;
	bh=FQTLzrIwq2V4jPRQF2+RGT0CU0kjbHHMSgW+Rr24umY=;
	h=To:Subject:From:Message-Id:Date; b=GHOKEZNsxYThdcwG5jQZEuaQ3LR685D/zsfHDki9YTItsCUg5lHQw7PQrG4EzC9Pe+ZtZ6KbDQivx7tvi5JpFPhmaQ5jQrI2eF8dIVQx6/WyLTRTzEu4wZf/7x/DvfhMVhAPpsDb9soQBqD+WJVBgYr41U6yRc/PuVGuCzIkSZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDlcJH69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDlcJH69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF9BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784523513;
	bh=FQTLzrIwq2V4jPRQF2+RGT0CU0kjbHHMSgW+Rr24umY=;
	h=To:Subject:From:Date:From;
	b=nDlcJH69rFGbIBl0leHq0Hr4MLw5MDxDDcT+4xy+mnm0MZuIM7qkqfWQTMX48S9Id
	 GXmbVDUm0k4wADAtADt1kY8nCOQlMz04d1tCqZfqo46HEjQHdqugLnB1Tf5i090qNF
	 FgUJC5wcu7c/aKIgYN6VrgYBqXKLkPRAxWKAasA5F7Ic0fVSjoTwPbvwFtKSpmWJHf
	 xqvgFD4FLJuaV9dAzGMvZ4c/r34ApPJhLdCtE/6WeeVT/W+6cMAF/feiYk+gDN7ggu
	 4uq6Rd96CyGV3lZ5LWFdJavUrMKrVnx08MxadvQvkrPUUxhy8x0NjztsYsRENuuy0h
	 idg9wOYbHe5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1DDC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452351368.918.16528119651125757266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9142985c8412a70ae0eed33261ad9928c97459f080174c15211579d4cdc02f78
Date: Mon, 20 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784523513

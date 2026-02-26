Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23B919CCF5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772126693; cv=none; b=GyI18HKRi6BOcXtvWUhiF34hc4G2VGYcp1IR3jXzBPTkxhISAL20B8T9xkL/uyatpNesmNmY0h0gtsI2dOtla3pMVtH1/1WbsH4DPRQIVbyI8Ep3k8brsc9I66B62KnqmxEiLxjXemyEAhHL3hhe1PJ+dc+EDtpg1F5ddD9oqEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772126693; c=relaxed/simple;
	bh=pNEVjR6H2N3JmMhYvwjegGdyfx/IZdZXeq4oImC7YMM=;
	h=To:Subject:From:Message-Id:Date; b=RJW5uJtyDar3G822LYOgpI9r82b6Wr985uJUTWT0CsxDEN6Cdf0lY0FHgei4umbR2zEB+S6Zu4aPHY8LILIb9vMJC88+3KTgcFsQdZmxlbWWQTuZCZWeyVfw0dlMTi+POkE2xh2fHjHAhsglChVI3wHzvQqmDmGPKtOHsF3mKbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBJbusrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBJbusrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772126693;
	bh=pNEVjR6H2N3JmMhYvwjegGdyfx/IZdZXeq4oImC7YMM=;
	h=To:Subject:From:Date:From;
	b=fBJbusrE6RA0Yex0gyrR95nm8wUd1RpOZWT6XfEEif6Ba/AQS+y0x0r5QtfI5o/vJ
	 Y8K9XvNAzD6x0aDcpr9ao1Nm5qR7VHDh5p9PZ8ERkAjpf1ufgtgSc/gEyMJLFASCuh
	 UO3FyeO2PLbydOKucM6DY7dU+jTIWCucuGVM3N4JEEwXBpZEJA1wTUVYVgpTJQZwIX
	 WN+09WaIqMNR0Z7xzhVp3JSqLxt7OJljPSheOuuxFx94XmxcpMqyzPBgoXBaXieWmk
	 R4Q+bUPshtB3iSFjACyPNgtfv0bIaxt0KpDVnnrqWc8A/j/LQ7hPwYxBG3hRjp1h2D
	 O51gus8QjQtcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B2FD8FE2
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212669358.18143.6788796941656997951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd422116bb0681c936056d296e46d998c78c3b475d4a6a42d7e7cb08f0e54827
Date: Thu, 26 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772126693

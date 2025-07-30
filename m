Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3446FDF71
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753877994; cv=none; b=jy2NXyKbwlPvFI+vs1344EqtJE2bnXNPKbV/4O10EZgogP9snv38vVSOwJlGpHOHDmcp86A7H7qH/JO2pIOAdyuxCc0lGWkvtJhgTBwr/7SvDfWnhbuVUWg1yJ9m4Vbez8f7sO11BlLMBM9ikhalzTde3JnI3YFGmbKDMjEA1So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753877994; c=relaxed/simple;
	bh=ApNpCzfHTzlXLz2TKtW23S2DiwAIbKrfOonWuGeBHMk=;
	h=To:Subject:From:Message-Id:Date; b=DDqsttJXR/pou429uYrnDCX73wO2tiFh8cGtBKwN3ZOpdIRauBonafIgDcLO4fnxbGgxNXZ0OMTmftWqSyv6g20AJ1SQB0RLcJ+y8lbKOa6jmEeirQ4B9W6XrEyQ4oV3Ezt/czt7W5Zz/VC9Qo5IWllcOONYjOxMseXfgccDp/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRdtpuBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRdtpuBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06A3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753877993;
	bh=ApNpCzfHTzlXLz2TKtW23S2DiwAIbKrfOonWuGeBHMk=;
	h=To:Subject:From:Date:From;
	b=gRdtpuBk0elorv6fC+Zu3QwZnpC+6S09jbfRTqbspjCHXWRTKZETM4cDzcsr2J04T
	 Hy6BDmyj4mAGOaJMMPWPOzRFFePk/Y6ySRH/SV0XgU78d9E5W1lOufA+jozb+rBrhW
	 LLZ2kghmhvq8D9p7P6YKaCqctieLjLlpUPUNJC6r+A4H0WecOk7UcIc1aQElsrZgba
	 YIPr+XCAjyZRmh51tH7+WRUqgcPtie+YjGGOatEptgjyKBYF0pMkru3u6EA0BmKCP8
	 sk/cGGEKzd8yALYeeZO+YnnQc/mnA3DnqLkHyrBDmpvbb9ozyMo9TRmUDK++lORoUD
	 oiYai/ZV/yWyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2AC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387799357.8495.13755174783863284297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54b585ba600deeb31f04bc57608f5947b482f656cf0fdc1aa9abb374f02d156
Date: Wed, 30 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753877993

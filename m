Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6691EB4B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722532554; cv=none; b=sU6dBjaeC0xIZtdbSOnElk9x1RyXLei6uB8DKzt+6RmhMyGGvKTKTVaiFBeK/N7l/+mT4VskisoxJf/tU7AoFLl7aofJo16zOjnPjBbCXqUMl+6YxuVZ3HLKp4wZsMSUfMcI2zOOqNkBQVuamdSNQCfBasCTWV2ZZjrNU8rtvro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722532554; c=relaxed/simple;
	bh=CAa4jgSoyRKrHsW0EG0eGRfkEFWXGX6hB4PIoknRtqw=;
	h=To:Subject:From:Message-Id:Date; b=qtj/sJSinejHMTPvT1njaatgBhZg8KOetjkeuigfItv7gLc2IU9k8oLPKZTew/aQBdWi5E1TviKo9lttDVgo9Hm2Sa8rLysflhI95TUx0YPwhnly/8cTj8S6cJMG0I4wC34FGyk69I2B0G1tcYiMOHKbabE4BWCprc0y4jnlhaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ts5PhEb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ts5PhEb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7259C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722532553;
	bh=CAa4jgSoyRKrHsW0EG0eGRfkEFWXGX6hB4PIoknRtqw=;
	h=To:Subject:From:Date:From;
	b=Ts5PhEb6hjc6kHANdFot+IWrUFv/9PCl5lXCpCTKWAnvJMuqAeXJSsmiZ5aPmlnMz
	 E5c2GcGuLdHUYmrJ0NlSJS/93j1SZ3F+qHI+MK1ru9cxc1BZdQO4Y07MKELkYfOTKW
	 LCYwGgYLT/2cxUlz3pm7M50zn6OyGUucKDxNDZigXuOqMTEEE9boL/jtYniiz9qKS7
	 z6A10Rm17551Rev6igVvf5dODLjGh+WnSJjoZK0xQHtPmCc+KXVucFsiWXQPtGACQy
	 MixqNu8UNzZ/GQ6dHOTxWzkOl0+I/ueuNzHjqZd3M4YSYZ7d+WOJhykXL6FWRhchVY
	 1n/edUdBX49ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9559CC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172253255360.18522.9760730991850850024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b18156e16923bbdbeb8faa5fcfc9c327048d99ff1bb9572d8db14630224674
Date: Thu, 01 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722532553

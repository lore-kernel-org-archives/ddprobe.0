Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E714C6D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710561497; cv=none; b=ci8onZvZQJZ1ZKwEXmHAZmYA8p5yowZDEvzPsIlfvyYhbgWt1Uuizv5in6vMuo8FZn8h41/hViWlpO8DwoG50Nw9fPyuoQ1TasA52LNZCkDMAId+jqEI5JHwllRIjNB/ZNt7hXBybdnVGdMkYTuvYiafVRtPh0GSQ2k/7tyLs+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710561497; c=relaxed/simple;
	bh=NxBfXUY7WsNJt00Fh6SHUf3B1STMkO3ULgNBYcfzh8M=;
	h=To:Subject:From:Message-Id:Date; b=HIGma2KW3VRG3E2bYMY4zCoEJsDs9gThkedBN0ahfnfKACajK27MkYEtUEgHwPbPJswGTBcbEPXwj1n6pl/q8935e1XCdiTCnhbpIfHugTZrjUfMI+Gj4QJlxMbYq0BgPuaTi5eJwNKJPUSZ3i/wLCY3qrw+PissP99tbvtVINI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgU4pkoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgU4pkoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A2DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710561496;
	bh=NxBfXUY7WsNJt00Fh6SHUf3B1STMkO3ULgNBYcfzh8M=;
	h=To:Subject:From:Date:From;
	b=QgU4pkoBEY7Jh0givjUKCWLqwmkRHO+KmxO9eXH94e/R8cHwAyDAvsy5vlzNShZjC
	 Sx7rDcywRb58PA57ocFGuNoMbuWJ9pqlUPIVZDFhQkCGmPv/srE0b7NQEKZDdcCUWH
	 i2yuljpGWdYPmmUKHnB1GmLApsCSvuXDwNCJk5vewHPKYRJYcaruTZwdR9SJwmO36f
	 ZSaLsuCqm/AqIE8ie+DMansmf9CPkXFZPauA2N2qaJWcdXK92ZnXPzkHXrR5LRRGY7
	 oxRc2GE3gx4vWZaPfgl7+T4rMpPNaPpVjOXg+/S4GDbS9mXx0zCrBzJncrxYUvYF9/
	 nNMcfSO9/v99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626B0C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171056149637.22079.11416341043139971400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fb0cc4452da739836868b61ec2aa880e4ac1be3b2e76c6a07223b0a3e85e44
Date: Sat, 16 Mar 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710561496

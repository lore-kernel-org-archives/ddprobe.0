Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339751F09B3
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747923594; cv=none; b=gKWZ1RCu3nklt4MUUj6SJe0u9/Gm9MJn1ttF1t1zZvlm+D1iDqxVX9tD9fO38kDJIleiaygiGBG/F094tYduxx+zcfCHiq49cOHo9TjVkxgCZwBjVvEY8mEOV7ZWX1iWOZMFVgdisFsOoHbJlCi1/7JdkoQKYG/rEjqp2EJsnHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747923594; c=relaxed/simple;
	bh=xklh99/oCE7YLh6io2pyPJOmXmyi+4lUDUUYW/xFAKY=;
	h=To:Subject:From:Message-Id:Date; b=kMM9qZjctnhW2iugJDva0UZj6Z0lWRDp+B1SSUxjez+IfYBm4IYKpuWbI+ibvcGhSFmdfXFsgh+Dhxk4wjjdoKDa8sekQoI107+PlJBegb+8P9XG81Bk3coIJCj02+3TtjAUI1sHXBShVevC1HTJGsXREShyYfx8Ji/ORFL9KnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkWqGClt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkWqGClt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0437C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747923593;
	bh=xklh99/oCE7YLh6io2pyPJOmXmyi+4lUDUUYW/xFAKY=;
	h=To:Subject:From:Date:From;
	b=LkWqGClt/8kdL/uyRzE6XJ24UpTvjDW+k1S7KklSIiVtQzDGxifvXxN7jWMfzm4Qx
	 C7SAKsdORJjpKJTVCN0Xy+5dE7Nxy/5twkDHgMigihHsXEZvLV5R+48E7V7xKM2uUx
	 Laf0yTen4EhHMXah7uiqQtuSsEMdSwyjTAcOwlvUW4B8fYHR8l12FfwGenu/KF0vAL
	 Lj/fCweTcDh5AzYZjHEpfx1KvUDIqPvncpLAq31CImuyr10I+uGxT745HGUUYxxxlj
	 dtKIR7AQxoLSsG8Vmk2vaAPnZ6ZemE5wBy/W+cNLwLttrIt3z2WjI+6cjhVmkQUNcx
	 B3ARS2jOh5LHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014AC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792359358.31740.14932289029454716193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa56b3bc149dcc2cf19ba24fce8c78662fa5d4af58cf3b81135ac8480cb8d532
Date: Thu, 22 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747923593

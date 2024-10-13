Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC471E4BE
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728832554; cv=none; b=klhyctVBHsPd6Lzq8s1fHVJPSCzJgkDF3ccfTYkEIfnM7TUIFyeMAdCoX3ZJuTcY+fnoL56pSHnkgDzPvCwbcavt0NHigWc9WX9qRT9lYe1ablNlTsSv6RoBzVcerAwGBPHVxT0mHw4siwuajGJKmg9I9pq6mKx7NgVno8GG65U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728832554; c=relaxed/simple;
	bh=91RdoIQrPFPQ5iUOss8g6M8CiUFUjoFSZ266yECem8E=;
	h=To:Subject:From:Message-Id:Date; b=TWYYnJ2L4jpwEB4TBUdaxehCybOr9NzLNH4cLaTqnEdZyKc8ezFP/70FqEi5pjxb7m1qLA7naV9nFym/ZRJvSUNoprznM0gCpbyMznfWgCqRPUUsdadroolUYyW9TbMVhPbxkxZS5F3rWT9TzC/zTZl+M9hgRU/EKojSLYdV/xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVkU8v8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVkU8v8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5375C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728832553;
	bh=91RdoIQrPFPQ5iUOss8g6M8CiUFUjoFSZ266yECem8E=;
	h=To:Subject:From:Date:From;
	b=YVkU8v8COTKwoF3uaOZ19QbFtREKb5/NZVWokjoIivlUQJvFP2Jdrqkipm3uLXFn+
	 fX6/7wUouOxIajrRsLJJ9u2nUy7p6gJyb60rBaXHE7n5RmJ/jLVn/wQXcAp3hcTyxV
	 yDb2Fxfou6T+Z0f0lcWUkUwmmeqWR8UVhoeTzfI6lY3gHohB3mNx5WXG1zqLVtKZkP
	 a6+LkI3f2zuChlCo3GIA6IY4oLkVYCmd2DbXNmZSQq+3jegyHmR8T9UHcOxmhnozdu
	 sP0oJIp4RzMw0D5XHMfoeA5JrJf7jRFt15PbmukbGAJDFxgdMRRKgq/MVH2Ghcp6fi
	 92qXG8rvSnwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955FACF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883255358.32067.9742649635780484860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fd47b20d438c3efdd448c0768ed60334a97847100ab7586f9b58164d8ba496
Date: Sun, 13 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728832553

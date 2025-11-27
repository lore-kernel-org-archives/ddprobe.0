Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B1B30217F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764273774; cv=none; b=ODBrwe+tYaKCkMcDYspotffh7Ufq4jG2qFek/qXWRrt7klFKKu52/zxBu+0a/ZDFJQl2h47VPnnrsWnh6Hd6nLVV8HI02roF62YJK8oHn6YbH6g6FsvzThObGnoIBhmAoeXYzNec7Yl5hT0hmVHC5Whfx/R10ff3VQGQpZF6lKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764273774; c=relaxed/simple;
	bh=YOSZSEfeujSA/alqF+q3NDd05Au3FQYZZg22hG2D5OQ=;
	h=To:Subject:From:Message-Id:Date; b=u7DQzgMfEi5XLJvwQCumHVXM+UsUg8jtDK9Nbgv4moDv0N2YcIqyDG8ghTzrqMU1qBgDAd6Nfr1JdsJAUX2RVUteqXQ+h2Ok8d4Cghocg3on6mpUAwxlV4mI78jrZJJlgnUXD7YrW0NX5nQjIbYNY/7sfvhI7hh3cMSEGs+6Gp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNxHVA3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNxHVA3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F2FC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764273773;
	bh=YOSZSEfeujSA/alqF+q3NDd05Au3FQYZZg22hG2D5OQ=;
	h=To:Subject:From:Date:From;
	b=kNxHVA3uABgdgo1o3i9mwyQEA2b9XuAXVYwhYcDj51AsmV1pJMKxd4rLVMo06XrsP
	 B32RCeWE1UJcBfimIq7izXqgEV8bNK6/TKFXgZO5Vl21ozNC1wXxaiNa+uDx8YW7cC
	 ZOZaiWsaylRpRc60UPfgl3nUT2LAB3Q0c86SKqRg/BM+dedSrMXpMn+EeRKkTejLUp
	 rsRNVnFqONXy82u+wZOMeckbC2mSm2iB7TbkZuAqLiTKB/Sxa34qTtHjSbK+Jrhthh
	 6ZEvALaelaomq100mHlfHqkg7hZV4qC2WwfZCfDLfBLAZStTYvApm97FHIliJYw8eZ
	 D3OtiQK6RKlyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7BCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427377358.24126.13698786802073825299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5952f8deadddc5d4581eab6eed227da94dfebc1ea3a42651409534ba3dbf635
Date: Thu, 27 Nov 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764273773

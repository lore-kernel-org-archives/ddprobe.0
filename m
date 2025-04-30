Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC1EC2
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745990994; cv=none; b=Ndor5VwA+auEgOc9YWZiG099lbxdSOCDv4zYdLEt6ymRww4kB4q0e+9yP5i+zZ40xjlCFA3mLi+pGZrToSeNEKLMAFubEPnc9qMInL9UKy0oaoHx2t9pNq6Vttw1wRkydRb3D2xxK8yPwN4NtEkzWR3f9JYRRMnyocaOjK/dpLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745990994; c=relaxed/simple;
	bh=8ortVj78x4mT3NhBkx6cC4/4L7VMoeA9dvBgpv2hsQc=;
	h=To:Subject:From:Message-Id:Date; b=siHsK8kRUbykLqQgz2Zq4n1yzezUPe66LrVFpzm27CJjvSu77IKLpo/k/TZ2Q2y4KHZxmrqswDiaanEDeNQXdqksv4aGciRWphl658f8Xexwpf1RL8gCkucHlSCZn8sM7sOYQhHhgCYv+nkt3gGAXeXKZV5PsJLRZmpdXFELk2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip8RW9IV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip8RW9IV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD6C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745990993;
	bh=8ortVj78x4mT3NhBkx6cC4/4L7VMoeA9dvBgpv2hsQc=;
	h=To:Subject:From:Date:From;
	b=Ip8RW9IVIxpG5CvmAS81dSu6Sw9nyDyy5m+OVRn74omrqshhUvIlyaS/ujH70Jl0u
	 iZlcM7jkFMFW4bLxQ7t5/mcJqTN0jiodQXbgvqHIZgHJrcv7UT06ss8K+D2/MRmxwj
	 2ZGUyKCF2u0cUkUqOW/8oOTL4VwZ0Y0dYNojoN+mp8pNvJEpxcWdgkffL2/P12Xh6L
	 zzBqU0RAZ1+2WcHc64CvQ4tQsW+ZWSA8Xy86aBgYUIUg0GNnIJOMvWLIVvUY8HUchv
	 BOE5Aej/K1KVeqJrQOJzTFxhU9gLieGlgcbH1ALT9Geq7EQHdWC173iSYS0RWD8PWx
	 yK/+OdUJwvpCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B88C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599099358.24026.5740253728278685498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11846427258f8eb57419a03c627f14c75fa435739d1d0091cb12d96767a1dd0
Date: Wed, 30 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745990993

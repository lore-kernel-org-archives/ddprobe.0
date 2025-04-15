Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432A017C98
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713594; cv=none; b=ibDRrZdRoYiCYw3OllWzdwjJSo2C/haPnE9tHjDPvoQjNIgqd/agksit6dZhLcFp6G+wzw9NpywBL3KEUgiIoSyp57hoWUxS8qN4beg6T9FhuKv2rgWmBLHDXFbIdxZWsYeD0Ic4QttAKmbT6N7ot9aXD5nbGF4s/EBykARwTro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713594; c=relaxed/simple;
	bh=qpQ3feifwHYR1XOGWlL/cYF2F42BOYgCh+rc8/oCrs8=;
	h=To:Subject:From:Message-Id:Date; b=oFT1YcmZrWTQENOF2B3N2hMWOrdUwXrlWQirYrVBcB3vKHHTmgIDjOOY4kRdXxl/aDp+EMhOXAyK3zDK1msWtx13OnSO5k3sIJ9yDSxAiUEVMnCD0za6WPPooSYprVJpJSCs8LVAY5Y3ZF3BAkYBLP6mR5p2wUJvY83uwh+MhUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGeu4b+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGeu4b+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE177C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744713593;
	bh=qpQ3feifwHYR1XOGWlL/cYF2F42BOYgCh+rc8/oCrs8=;
	h=To:Subject:From:Date:From;
	b=qGeu4b+L/j/olQC5wZRs92D6odzV2uVkNogUUmUDOYfmU4ngvyk5uybb8t4rw4a+7
	 540pTKZ69JPNdWDSIi70ClL0eRh7h3my4WGC3ifC2XqkxG6MIoHd+SvHC3DzYDWFVh
	 aV0VAgKPYbtxlUm0qzsURk0fgzsE87AU96pi5XR8s08GGDkxkD7Yr/+hmP1i5y+XN1
	 UUHCaGKvOK2bZIevoZQQ5ysx4KErYSHNa4cG5bUra/j5aRMMZaw9n3T27U8yxPD1mD
	 6YpJ504aMdBIkGQFAsyMcqHZDF+BwMbyQWiDoAL+1ivTahpR/8qkc2H9BRu0neDHb+
	 WovY/DE58yyIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F29C369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471359361.4220.5768542871868773996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13dc24efdd398f16b9036aa3953c3ed71fa122b5c4e2c4de16f549abde8998bb
Date: Tue, 15 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744713593

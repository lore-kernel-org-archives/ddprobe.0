Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43890332610
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786540834; cv=none; b=l2YSVxY/fgiyDN0/eqCDRaFxtUGn19/VNp7g8LhPufMl9p4inIJf4HVcLnbji3cv93v93gk23AG1h9cD8woDKrGQxSTRYnLCTQQ/ssm2B4N4VlMGJLDKLigFDLMsPgXuJH3LK5qXY3OnZVOdNLg6u0VmnVPAWDPyc6XpqMvw6SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786540834; c=relaxed/simple;
	bh=X9fg4fX33VsMCzGtL1UJ7MDvDL4ZXgHYC6uTk7h9a4k=;
	h=To:Subject:From:Message-Id:Date; b=Gjm3jxsBekMHUzcleFALto9uNUG/azBGhMEI1AuT1KV/qfLpiCg1kplL9SEbD7tHFzAm42Px4M4MYPP7kmyoJBx1fqj0kSzakC8UL9WQkF774cJuk3/VQhVAmdVlo+NUofrQY8yOx9R+dfYjkxCMIUsZwlZcVI+CwWZzb6YB0ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNtJwK3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNtJwK3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6E2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786540833;
	bh=X9fg4fX33VsMCzGtL1UJ7MDvDL4ZXgHYC6uTk7h9a4k=;
	h=To:Subject:From:Date:From;
	b=PNtJwK3AJYCoz00bHrUxVz1olDaqQ5cgXvQNVoj9X2OYS+rTnO3V67ps4FqWfzFgr
	 z0ceCr5ujbIdhdsatkCCJCgmrUkQ56oVxqIBvTVZ6vDgkCTlHTCVdxPrgaY+ueJjjM
	 W3+3yskQsZODYN7KhTvUgRTMZeZ9QK4Uid+1OfKHqy6tQulJ6GVAfbK8Ixi6l2bFOF
	 Sp+nJUSKHjC8q2oj1lzaxAH9rWl3Y0PwS2lDWC73QHQbCa0vXwV+e5qRtSWRsFQv/y
	 g++/u6AO/oxjQjOfuiMFC5nraKXeohG4EUwDBoHA9XM8daaHkwghgWsPShdaadQDbV
	 fusqHfBHW4PNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85DFC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654083368.20760.11587598478958660727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37db3e816285823ef7db5de39be392eee8853101c674aa1b918029e6c80f2ec2
Date: Wed, 12 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786540833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B08C42AA0
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716542003; cv=none; b=aSLqNs3mI8W4H21qxME9dqH4hh2kiWbUqqYVurJAIyglUh8EpU9Od6uhklfw2gHhpVDd4A8/gJznrCPx/sM8UE6ckGBpqPtgJ0fKa/lRweKei8HFSoYYMKHbfS1tvuXpBgCvrM38qUzS9X4pfvpfjPh57kFk8yEE095VCnv9qOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716542003; c=relaxed/simple;
	bh=/SyEJ2fHgVM0DWrNgmp3MVCsP/6+mxz3R+J+nkh+NuA=;
	h=To:Subject:From:Message-Id:Date; b=k49tdyMU0bOymR7DBxyOi9/FIweu5qiKpVpmYa88r/0BIEJGBE1rVCZ9N9+b2omPqdZZAyok4Afxy4HgCZBs9T/JzA2bnFb+xOdGEDA0UQrGSqdHRYJNeDft3v+DnKSIvjQx2NQOW7XIAYxXHrlYBivAJWm21UbxpOLTfdKA7zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZmq/3k2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZmq/3k2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DD9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716542002;
	bh=/SyEJ2fHgVM0DWrNgmp3MVCsP/6+mxz3R+J+nkh+NuA=;
	h=To:Subject:From:Date:From;
	b=BZmq/3k2k+lqZOV2KnB/EqEvHjjSl9LJx3gz2+FRDZ48VSi/Q7lJLZ7EtPO/9WA2e
	 GmWOLyVMdnS0ShYyKJslvSdp7RZ3aKdMw6No9OngBDocGCR/2KN3bJW7WYVRP3COWr
	 9q4matsT7xzul4s6+sLdYJY87UmD/Ip20opN//pymWGEWRNcBDfX0W9D5FItUcRbMU
	 e0FsjGpyP18ex1Vrrs5c6o3Aq5b2fUe7jJYMqvYlJrI/Uq/vlPTruj9pnQ63iQ16Fm
	 uz5dSIUylhz0QA6neBR1PozlvaiIEEItsR2qX5xdV58Teem9SY8qS4zQYy0WN9vfOG
	 5WmY7bTFU5zaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44ABC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654200279.28945.170937088161260602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d507d4f89487407b6da672330fd15825cd5aa9f36e4ae147ec3b779a83c5ef7e
Date: Fri, 24 May 2024 09:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716542002

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2950021A457
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772865294; cv=none; b=kcyG3nlW6BXB7ndYG6qB8Fr4IfbUiJbS21wBRsvSbgIxSaifozu0qvxLa2QKGpE9OWok6fwAxWBgEtvDFTsG4RWc8oWJl8dHGy0LkuXTaZW8Bn727md9+/Np2Xsx4z1c+D9URHQeUx0wRpEOe7dvj70azxr5QaW/UQYVXnzIGB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772865294; c=relaxed/simple;
	bh=RPK8eDYIec+/IgexelhGQG0aO68eWdkruJPzHF1cxuA=;
	h=To:Subject:From:Message-Id:Date; b=gkH/DTX8IgA9BPDalBs4xpxkGZVJsL8ksEbpWU89b2PJ4CPDSoW4hOE7Cp9a/IB/G6E/IbBw17C6/TrPTAgvBE/2UvT7PU0dVs2k3q/idfHjA7I4HIXsPfhacfMkggHtWc5rmG+GEnXZ8R0sxAA4TzCgBhDJwPkdGZWm4lbeJmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5MPJR0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5MPJR0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF044C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772865293;
	bh=RPK8eDYIec+/IgexelhGQG0aO68eWdkruJPzHF1cxuA=;
	h=To:Subject:From:Date:From;
	b=u5MPJR0VajWKMFMtumdVer1IP2OmthOtR3ad5J1ef981onSgr3O3gNgyAL31KCJj0
	 kK7gblUOGs3WtM1a8U0ZAw0xKjdBi+0zlzQnLUBMs3xZY5uSoGFcx/fEilpyL7/OGo
	 jQzPeJfTDPwK6VJbPJJ8HXJpWZr1NU0XdUD4umY50hI4aPbUmetf/ixC86DDh3Akxe
	 1x/4rt+VdOaGBAKq/yxLkRWOb5iaAVjvb8CwOAKiHnkl3XFPHWQprPpVQ9eS3DRyDa
	 +lonSUUmUgwmyJ2b5efqU8Spa/Nj1W+YzIbqisIeeblzUTQvyNU5yeey0pTgXmjxjA
	 ZvD5bo3OeY8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E9EFC9ED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286529364.4496.9108908174915119998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415575af93008cfcb48fa356c794f325741ed1e149dbbb937585df8579251c87
Date: Sat, 07 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772865293

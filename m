Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A8E2D5426
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752761994; cv=none; b=gwPZ07wVyk+Z16zaqg924VL8RtlZYfjFCQ/X7OK8eND/mVsrBPMDG2GFrr+9S4LeegShJtDzAso/CFXwVLkaOPzRN9G9+WTbn+wPatqe4E+2ZQSybEYia47D4hgA+Yg6il6ZjkStETaqwBXpA13uc9ZWJtYKoemL1Hxu26gQpLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752761994; c=relaxed/simple;
	bh=pUXItf0L6tz0emUarGNTkcXDRC3bW5mVXBt5yDZev0w=;
	h=To:Subject:From:Message-Id:Date; b=bQUNX1S7lRbIQbJI7FcbEAALCc/k1hER4viC4Tf0YpSKomHFIjQNwTRaKNw0Ib2nd3GhFUMJNWfQXqlEh/0fwuHYBIHcv6udsj3aO35yE+ZeFKNXHjRQ84oStyfpcbU94bGMCO3DDKJ0DTydPLyoEPceGBjwFqyqPPk/tM9fyi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gV/KBNU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gV/KBNU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4272C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752761993;
	bh=pUXItf0L6tz0emUarGNTkcXDRC3bW5mVXBt5yDZev0w=;
	h=To:Subject:From:Date:From;
	b=gV/KBNU7M6cZIuy8VAJB8hLFLTTDW1H0U7cJmm98bj3kWna+wwV9kztzZdKqdwwsD
	 apsOPBxQsceABn9mSza7UtpG4f97RcrzK20NEOgfKiy1+y7lbJaXxzygc0hbYhiqrL
	 eX6jcGOjwpqstZXTWsrBGYy3QMW5QHnkELUnP6iskW3QVxIT7KQKxmedA8Gi2jHccK
	 U2RhTSNy7A0mhHFJ8pwMRbLl0X2z4dKk2TEfR9uoL/ssyDmsDw4o20up8+kCh5Sl8B
	 MbiZOuQe6qX/2EDQ7744GQ0Ya9LQrDp4VHnTvEAQbMvDSdS7QqPgXRtHjBt1OLrp1O
	 LB1+Tzon2Haew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9DC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276199358.3650.3690738988715316405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99fbef105b92e59590db7d7ef5106e235fab968209a1fa3a18d97dc82a84fd9
Date: Thu, 17 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752761993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325D175A63
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775896054; cv=none; b=QKhMd6MS2Ug2SnQqThkws6wlhsDBgxsVuUYCZ3eNoRbddh/o3W78q+ixSmU7GJli6BZTlu+Q7YkFYsSDSiDjFMxh7Ic8uap1/sQFBSYzM0vNMBlNyK0tuc98TzkESvA8z+djY9PBy/xrq3/2+QynDTxF/azibJhmNMBkhddBbd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775896054; c=relaxed/simple;
	bh=V2cKuo9xynq+K9N9RVR3RfHlaKFg80h06NGPTVM3Or8=;
	h=To:Subject:From:Message-Id:Date; b=Br6Z6+EhWnsUHk9FHCmrPF/6PB53+kq9I0SvDw0WFYevID/rJvlI+PnG53u4ZM0581HN6ZqPBgoD6IJvb4k41Fn9BOtq/DFAkOqj3CI5n9bxpSZpU8xEL3f4egHJwIlAQ+n/2QAHdHBpeXNVtWlU4WlOwXd+v5AGHtAk2yGQJAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUmVsQgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUmVsQgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BB2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775896053;
	bh=V2cKuo9xynq+K9N9RVR3RfHlaKFg80h06NGPTVM3Or8=;
	h=To:Subject:From:Date:From;
	b=UUmVsQgYqsLzXV4+krutzLRkf2bdEkZMaiZ+8kbqIoPuZYeIdbYRm3YP3662kka/d
	 mMrEJMK3WjU3q4wRynUHO0d1RtM8y3/3e/Pv52E8GJd1C5CPIjvob3sullPO4XU5SX
	 gnQyBBMtqmzYud8MMuEYzbZkDAgVgwQSPmmUSiMPw7bCmd1Dewk3ZmYBW6IAanp721
	 zt6ZkDcVeQ4mFfO5oIxKZ9yDv3J8y9SIH4N6R18k4eQqQZIyIKD0cHFc7Z6ABQJmDR
	 R3fjl05vY+iGiWqv5QqyUSeWrkGC+EXCfFCWmWiBIVBqd9+jroJJB+elqMugxrdiRN
	 NIo7upGhXyl4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFABFF45A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589605368.5880.12068277787095436066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358447091091b3a655abdea37da70f092f743aefce2c3cd081f878bcc82a0dd1
Date: Sat, 11 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775896053

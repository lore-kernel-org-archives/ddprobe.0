Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C62B2DA755
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771410294; cv=none; b=m53d/UGlGqTh2jabnJdwVyvpGvmlkoGMhsLx3TM7rKd2V4e0V2+47GXVV4hgr9y3FYc3MjwgXlHC4fbn2VnNE27WW4FXK7MFERMUwNJVIBKpZwtkbrvSQxhUOs7UGHMsyMSUQIjzWYBD8e93lCWOmpyLJCU9ErDB2pRNQSea9Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771410294; c=relaxed/simple;
	bh=s0IwTOnQHjkPgQYQHUlkuIkteHI585q0ZhhHBmKQsz0=;
	h=To:Subject:From:Message-Id:Date; b=k+SVFRcJKkhtG5g0cvhDIh+cQEXc+4MHHIeYxcbLNXLZsDz1esyjOKJ8QBJIfYlpIvnVl/87eMWUG+tT5YNn83wfBlpVJXR7ZSLwzd/AfF2Jvlb/iz61oqYRPq+DQnMZOrMRjNrpageVxAXDd2Iid9yNrF0/7uJoZIxiDvXYpnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Clian6Un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Clian6Un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC2C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771410293;
	bh=s0IwTOnQHjkPgQYQHUlkuIkteHI585q0ZhhHBmKQsz0=;
	h=To:Subject:From:Date:From;
	b=Clian6UnI8j9U790JhKvvlvgw6mqeSlHZVpzTbatgH2OloMoyrVu+5DdauZ2skRN+
	 5WNYnVlNdi0ZL1niVnTIXr2hNHcHvBmtCCCKpkymtDaVQyWeRBqDuJ5+XW2at/dECj
	 nDEqig1tS96ETYfZjISS6wZoNYMRFpxjpvOJglfs6zotuLgmPuG0MDIzw4GkkrnUtS
	 kaOMnqmKSnBzD/O64UaOC8wGtG5eVoPBQRW9kvsm5rqzpLe2NWVGAPR55ehQ9Diocg
	 vHI+zNtoC8OUlMyIYpvD8bIUYZgpJbGvc5hKYRwHdn3bXk8wrrqLUqWsiiZMDKoE6x
	 y3BvWKIZWHXHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E9E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141029359.31955.956963016724022228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1713398f4bfe4e3aa2dcb3bf91b2d8eb33286018973e74aaf5b1c9ca83a43c36
Date: Wed, 18 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771410293

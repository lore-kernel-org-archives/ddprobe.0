Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4CB53A7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757350794; cv=none; b=IrFYNQYAAnXmrIcV2tlIgeZr6brAyB7MtOTWtLHnvKD1y5mD+MePUU23X/whztw1PVe3KVOBJM1FS+Psrh29nZUfBreoabf4YvpGkTPEq+xuiQ1t9z03BGLkwLU1kAF6Gu1S9wTJ4IIrb+ozCTut4lLMIayQFUV2e4WFmDLvKVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757350794; c=relaxed/simple;
	bh=DLrC7UrlZvw7RZ+bWIIkZfKtALWTVhsluzCYWQ5vD5g=;
	h=To:Subject:From:Message-Id:Date; b=s6/0SODXhO19OYsPsJlxGMNrgR6GHh8SUpzTj/QyBwZxim7t1kXNo3h6kMiF9SmbxgpWC4d+vdB9V/d9CXLH3MfjXvpIjUfC7ElPH+AoQ9CZ5pDivKA0FJINljEwG3Wx5eURttrx+InREIFY+we30FVaZ6D5OrF0jVlR0BvxJwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7R3jWDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7R3jWDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0447C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757350793;
	bh=DLrC7UrlZvw7RZ+bWIIkZfKtALWTVhsluzCYWQ5vD5g=;
	h=To:Subject:From:Date:From;
	b=Y7R3jWDqatMf/we0L50GXXQpwSTmfbPAqkwET9fLJT7124DyMG32ZBhwvlhvwLdAV
	 X8EC856/e6Y64u6/isZfIcvlIhAdrMj9AqDmpxecG5IpggY76BB0kP+EdIPhoKT/1I
	 naS6BfSLTlUQaCr695oXdRyejWBGFPHlEc0adSvuCPsC5QTnmT82Ei+lC8NtwRq7te
	 fEjXH473hwhpsluixdCJy5NkHKfhzrDSPkYCwqHHEzR6G2MZmJ54jJA/07ktTN5/GV
	 xBTkJqK1iN+NEJw37vLYQLtxSU6dhfXDhhgbvxtTrJbYIBHA5Cj72SYVN0eOqWPq6H
	 TvAzjGrkdoiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048CCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735079358.24276.14309837603875667760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53514cb583ed20a9885c6cbe5f9926d8f32eb2e99612d51d65bb3a07343e3b17
Date: Mon, 08 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757350793
